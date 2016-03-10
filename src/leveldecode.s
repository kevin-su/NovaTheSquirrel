; Princess Engine
; Copyright (C) 2014-2016 NovaSquirrel
;
; This program is free software: you can redistribute it and/or
; modify it under the terms of the GNU General Public License as
; published by the Free Software Foundation; either version 3 of the
; License, or (at your option) any later version.
;
; This program is distributed in the hope that it will be useful, but
; WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
; General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;
.include "leveldecodeobjects.s"

.enum LevelHeader
  MUSIC_FLAGS1
;ad.mmmmm
;|| +++++- music
;|+------- if 1, player starts facing left
;+-------- if 1, use alternate buffer for collected bits
  XPOS
;xxxxxxxx
;++++++++- X position the player starts on
  YPOS_SCREENS
;ssssyyyy
;||||++++- Y position the player starts at
;++++----- number of screens in the level
  SPRITE_SLOT_1
;tttttttt sprite tileset 1
  SPRITE_SLOT_2
;tttttttt sprite tileset 2
  SPRITE_SLOT_3
;tttttttt sprite tileset 3
  SPRITE_SLOT_4
;tttttttt sprite tileset 4
  LEVEL_POINTER_LO
  LEVEL_POINTER_HI
  SPRITE_POINTER_LO
  SPRITE_POINTER_HI
  BACKGROUND_COLOR
.endenum
;uuuuuuuu - list of uploads to make for background tiles, palettes or whatever
;11111111 - ending with 255
;gets written to LevelUploadList

;abcdefgh ijklmnoL - boundaries between screens horizontally
;if L: specify links for top and bottom
;????nnnn
;||||++++- number of screens to change
;++++----- other flags that haven't been assigned anything
;ttttbbbb
;||||++++- bottom screen link
;++++----- top screen link

;Level data:
;TTTTTTTT XXXXYYYY [SSSSSSSS]
;T - Object type (0-255)
;Y - Y position absolute (0-15)
;X - X position relative (0-15)
;S - Settings byte, if needed
;
;Level commands
;1111TTTT [SSSSSSSS]
;T - 0 finished with the level
;    1 set X to S
;    2 write 1 column byte at current column
;    3 write 2 column bytes starting at this column
;    4 write 3 column bytes starting at this column
;    5 current X -= 16
;    6 current X += 16

.proc DecompressLevel ; A = level number
LevelBank = 15 ; figure out what to put in here later; for now it's just gonna be LEVELS_BANK1
  tax
  lda #LEVELS_BANK1 ; get this out of the way
  sta LevelBank
  jsr SetPRG

; get the start of the level header
  lda MasterLevelListL,x
  sta LevelHeaderPointer+0
  lda MasterLevelListH,x
  sta LevelHeaderPointer+1

; clear out the level buffer ($6000-$6fff)
  lda #<$6000
  sta 0
  ldx #>$6000
  stx 1
  lda #0
  sta LevelDecodeXPos
  tay
: sta (0),y
  iny
  bne :-
  inx
  stx 1
  cpx #$70
  bne :-

; clear out some other stuff
  ldx #0
  txa
: sta ColumnBytes,x
  inx
  bne :-

  ; A is still zero
  tax ; so X = 0 too
: sta LevelLinkUp,x
  inx
  cpx #16+16+16
  bne :-

; now read the header
  ldy #0
  lda (LevelHeaderPointer),y
  pha
  pha
  and #31
  sta LevelMusic
  pla
  and #%01000000
  cmp #%01000000
  lda #0
  adc #0
  sta PlayerDir
  pla
  and #%10000000
  sta CollectedBitsIndex

; read starting player X position
  iny
  lda (LevelHeaderPointer),y
  sta PlayerPXH
  lda #4
  sta PlayerPXL

; read starting player Y position and number of screens
  iny
  lda (LevelHeaderPointer),y
  pha
  and #15
  sta PlayerPYH
  pla
  .repeat 4
    lsr
  .endrep
  sta LevelSize
  lda #$80
  sta PlayerPYL

; read the four sprite slots and level and sprite pointers
  ldx #0 ; also writes LevelDecodePointer and LevelSpritePointer and LevelBackgroundColor
: iny
  lda (LevelHeaderPointer),y
  sta SpriteTileSlots,x
  inx
  cpx #9
  bne :-

; read the list of graphics to upload, ending with -1
  ldx #0
: iny
  lda (LevelHeaderPointer),y
  sta LevelUploadList,x
  inx
  cmp #<-1
  bne :-

  lda #1
  sta ScreenFlags+0    ; first screen has left boundary
  sta ScreenFlagsDummy ; last screen has right boundary

; read level boundaries
  iny
  ldx #0
  lda (LevelHeaderPointer),y
: asl
  rol ScreenFlags+1,x
  inx
  cpx #8 ; move onto the next byte after we're done with the first
  bne :+
    iny
    lda (LevelHeaderPointer),y
  :
  cpx #15
  beq :+
  bne :--
:

  ; now the link bit is the most significant bit
  asl
  bcc NoLinks

  ; Start at screen zero
  ldx #0
LinkLoop:
  ; Get next byte in the header (number of screens to change)
  iny
  lda (LevelHeaderPointer),y
  and #15
  sta 0
  inc 0

  ; Read the up and down bytes
  ; (repeated for each time it's used, but it doesn't matter)
  iny
: lda (LevelHeaderPointer),y
  unpackx LevelLinkDown, LevelLinkUp
  inx
  dec 0
  bne :-

  cpx #16
  bcc LinkLoop
NoLinks:

; decompress background graphics
; and sprites
  jsr DoLevelUploadList

  ; display a "now loading" or whatever
  ; currently it says PLZ WAIT
  jsr ClearName
  lda #>($1000 - 64)
  sta PPUADDR
  lda #<($1000 - 64)
  sta PPUADDR
  ldx #0
: lda LoadingCHR,x
  sta PPUDATA
  inx
  cpx #64
  bne :-
  ; write to nametable
  PositionXY 0, 14, 15
  ldx #$fc
  stx PPUDATA
  inx
  stx PPUDATA
  inx
  stx PPUDATA
  inx
  stx PPUDATA
  lda #0
  sta PPUSCROLL
  sta PPUSCROLL
  jsr WaitVblank
  lda #BG_ON
  sta PPUMASK

  lda LevelBank
  jsr SetPRG

.if 0
  ; find the end of the sprite list
  ldy #0
  sty CurSpriteIndex
: lda (LevelSpritePointer),y
  sta SpriteListRAM,y
  cmp #255
  beq :+
  iny
  iny
  iny
  bne :-
: sty LastSpriteIndex
.endif

  ; copy the sprite list in
  ; To do: stop when we reach the end of the list
  ldy #0
: lda (LevelSpritePointer),y
  sta SpriteListRAM,y
  iny
  bne :-

  jsr LevelDecodeLoop

  lda #15
  sta LevelSize
  lda #LEVELPROCESS_BANK
  jsr SetPRG
  jsr PostProcessLevel
  jsr MakeBackground

  ; add arrows to mark links
  ldx #15
ArrowLoop:
  lda LevelLinkUp,x
  beq @NotUp
  ldy #0
  jsr PutArrows
@NotUp:
  lda LevelLinkDown,x
  beq @NotDown
  ldy #13
  jsr PutArrows
@NotDown:
  dex
  bpl ArrowLoop
  rts

PutArrows:
  txa
  ora #$60
  sta LevelBlockPtr+1
  lda #0
  sta LevelBlockPtr+0

; now write a screen width of arrows
  lda #16
  sta 0   ; Initialize counter

  tya
  cpy #1 ; Select up arrows or down arrows 
  lda #0
  adc #Metatiles::BG_UP_ARROW  
  sta 1

  ; Make two rows
@ArrowRowLoop:
  ; Top row
  lda (LevelBlockPtr),y
  bne :+
  lda 1
  sta (LevelBlockPtr),y
: iny
  ; Bottom row
  lda (LevelBlockPtr),y
  bne :+
  lda 1
  sta (LevelBlockPtr),y
: dey

  ; Next column
  pha
  lda LevelBlockPtr
  add #$10
  sta LevelBlockPtr
  pla
  dec 0
  bne @ArrowRowLoop
  rts
.endproc

.proc LevelDecodeLoop
: jsr LevelDecodeCommand
  jmp :-
.endproc

.proc DoLevelUploadList
; background and palettes
  ldy #0
: tya
  lda LevelUploadList,y
  cmp #255
  beq :+
  jsr DoGraphicUpload
  iny
  bne :-
:
; sprites
  ldy #0
: tya
  asl
  sta 0
  lda SpriteTileSlots,y
  jsr DoGraphicUpload_Off
  iny
  cpy #4
  bne :-
  rts
.endproc

LoadingCHR:
.incbin "chr/loading.chr"

.proc LevelDecodeCommand
ObjectType = DecodeObjectType
ObjectXY = DecodeObjectXY
  ldy #0
  lda (LevelDecodePointer),y
  cmp #$f0
  bcs SpecialCommand

  sta ObjectType
  iny
  lda (LevelDecodePointer),y ; read XY byte too
  sta ObjectXY
  lsr ; get X nybble only
  lsr
  lsr
  lsr
  add LevelDecodeXPos
  sta LevelDecodeXPos
  pha
  lda ObjectXY
  and #15
  sta ObjectXY
  tay
  pla
  jsr GetLevelColumnPtr

  lda #2
  jsr IncreasePointerBy ; skip pointer over type byte and XY byte

  ; in that case it's just a normal command
NormalCommand:
  lda ObjectType
  asl
  tay
  sty 0
  ldx ObjectTypesTable+0,y
  lda DecodeObjectTypesAddressesH,x
  pha
  lda DecodeObjectTypesAddressesL,x
  pha
  lda ObjectTypesTable+1,y ; read byte specified for this command
  ldy #0                   ; prepare Y for reading more bytes
  rts

SpecialCommand:
  inc LevelDecodePointer+0
  beq :+
  inc LevelDecodePointer+1
: ; Y is still zero
  and #$0f
  asl
  tax
  lda SpecialCommandTable+1,x
  pha
  lda SpecialCommandTable+0,x
  pha
  rts
SpecialCommandTable:
  .raddr SpecialFinished
  .raddr SpecialSetX
  .raddr SpecialWrite1Column
  .raddr SpecialWrite2Column
  .raddr SpecialWrite3Column
  .raddr SpecialXMinus16
  .raddr SpecialXPlus16
IncreasePointerBy:
  add LevelDecodePointer+0
  sta LevelDecodePointer+0
  bcc :+
    inc LevelDecodePointer+1
: rts
SpecialSetX:
  lda (LevelDecodePointer),y
  sta LevelDecodeXPos
  lda #1
  bne IncreasePointerBy
SpecialWrite1Column:
  lda LevelDecodeXPos
  ;lsr
  tax
  lda (LevelDecodePointer),y
  sta ColumnBytes,x
  iny  
  lda #1
  bne IncreasePointerBy
SpecialWrite2Column:
  lda LevelDecodeXPos
  ;lsr
  tax
  lda (LevelDecodePointer),y
  sta ColumnBytes,x
  iny
  lda (LevelDecodePointer),y
  sta ColumnBytes+1,x
  iny
  lda #2
  bne IncreasePointerBy
SpecialWrite3Column:
  lda LevelDecodeXPos
  ;lsr
  tax
  lda (LevelDecodePointer),y
  sta ColumnBytes,x
  iny
  lda (LevelDecodePointer),y
  sta ColumnBytes+1,x
  iny
  lda (LevelDecodePointer),y
  sta ColumnBytes+2,x
  iny
  lda #3
  bne IncreasePointerBy
SpecialXMinus16:
  lda LevelDecodeXPos
  sub #16
  sta LevelDecodeXPos
  rts
SpecialXPlus16:
  lda LevelDecodeXPos
  add #16
  sta LevelDecodeXPos
  rts
SpecialFinished:
  pla
  pla
  rts
.endproc

IncreaseDecodePointerBy = LevelDecodeCommand::IncreasePointerBy

.proc DO_CustomBlockSingle
  lda (LevelDecodePointer),y
  ldy 1
  sta (LevelBlockPtr),y
  lda #1
  jmp IncreaseDecodePointerBy
.endproc

.proc DO_CustomBlockRectangle
  lda (LevelDecodePointer),y
  sta DecodeObjectBlock
  iny
  lda (LevelDecodePointer),y
  jsr DecodeWriteRectangleConvert
  lda #2
  jmp IncreaseDecodePointerBy
.endproc

.proc DO_BlockSingle
  ldy DecodeObjectXY
  sta (LevelBlockPtr),y  
  rts
.endproc

.proc DO_BlockRectangle
  sta DecodeObjectBlock
  lda (LevelDecodePointer),y
  jsr DecodeWriteRectangleConvert
  lda #1
  jmp IncreaseDecodePointerBy
.endproc

.if 0 ; not useful
.proc DO_BlockExtraWide
  sta DecodeObjectBlock
  lda (LevelDecodePointer),y
  sta DecodeObjectWidth
  lda #0
  sta DecodeObjectHeight
  jsr DecodeWriteRectangle
  lda #1
  jmp IncreaseDecodePointerBy
.endproc

.proc DO_BlockExtraTall
  sta DecodeObjectBlock
  lda (LevelDecodePointer),y
  sta DecodeObjectHeight
  lda #0
  sta DecodeObjectWidth
  jsr DecodeWriteRectangle
  lda #1
  jmp IncreaseDecodePointerBy
.endproc
.endif

.proc DO_BlockWideList
  lda (LevelDecodePointer),y
  pha
  lsr
  lsr
  lsr
  lsr
  sta DecodeObjectWidth
  pla
  and #15
  tax
  lda ObjectTypesList,x
  sta DecodeObjectBlock
  lda #0
  sta DecodeObjectHeight
  jsr DecodeWriteRectangle
  lda #1
  jmp IncreaseDecodePointerBy
.endproc

.proc DO_BlockRectList
  lda (LevelDecodePointer),y
  pha
  lsr
  lsr
  lsr
  lsr
  sta DecodeObjectHeight
  pla
  and #15
  tax
  lda ObjectTypesList,x
  sta DecodeObjectBlock
  iny
  lda (LevelDecodePointer),y
  sta DecodeObjectWidth
  jsr DecodeWriteRectangle
  lda #2
  jmp IncreaseDecodePointerBy
.endproc

.proc DO_BlockTallList
  lda (LevelDecodePointer),y
  pha
  lsr
  lsr
  lsr
  lsr
  sta DecodeObjectHeight
  pla
  and #15
  tax
  lda ObjectTypesList,x
  sta DecodeObjectBlock
  lda #0
  sta DecodeObjectWidth
  jsr DecodeWriteRectangle
  lda #1
  jmp IncreaseDecodePointerBy
.endproc

DecodeWriteRectangleConvert:
  pha
  lsr
  lsr
  lsr
  lsr
  sta DecodeObjectWidth
  pla
  and #15
  sta DecodeObjectHeight
; Writes a rectangle to the level buffer
; inputs: DecodeObjectType, DecodeObjectXY, DecodeObjectBlock, DecodeObjectWidth, DecodeObjectHeight
; locals: 5, TempSpace+0..TempSpace+4
.proc DecodeWriteRectangle
  inc DecodeObjectWidth ; increase width and height by 1
  inc DecodeObjectHeight
ColumnLoop:
  lda DecodeObjectHeight ; save height
  sta 5

  ldy DecodeObjectXY
  lda DecodeObjectBlock
RowLoop:
  sta (LevelBlockPtr),y
  iny
  dec 5
  bne RowLoop

  ; next column
  lda LevelBlockPtr
  add #16
  sta LevelBlockPtr
  bcc :+
    inc LevelBlockPtr+1
: dec DecodeObjectWidth
  bne ColumnLoop
  rts
.endproc

.proc DO_RectangleSeries
CurrentXY = 0
Width = 1
Height = 2
TempHeight = 3
  sta DecodeObjectBlock
PointLoop:
  ; read the X and Y
  ldy #0
  lda (LevelDecodePointer),y
  inc16 LevelDecodePointer
  cmp #$ff ; if $ff is read, we're done
  rtseq

  ; unpack into the X and Y
  pha
  lsr
  lsr
  lsr
  lsr
  sta Width
  inc Width ; width is 1-16
  pla
  and #15
  sta Height  ; zero height is valid, no adjustment needed

  ; fill the rectangle column by column
ColumnLoop:
  lda Height
  sta TempHeight
  beq SkipFill ; zero height won't write anything

  ; fill column
  ldy DecodeObjectXY ; base Y
  lda DecodeObjectBlock
: sta (LevelBlockPtr),y
  dey
  dec TempHeight
  bne :-
SkipFill:

  ; move to the next column
  lda LevelBlockPtr
  add #16
  sta LevelBlockPtr
  bcc :+
    inc LevelBlockPtr+1
:
  ; are we done with the rectangle yet?
  dec Width
  bne ColumnLoop

  jmp PointLoop
.endproc
