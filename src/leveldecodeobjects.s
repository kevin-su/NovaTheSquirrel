;TTTTTTTT XXXXYYYY [SSSSSSSS]
.enum
  CUSTOM_BLOCK_SINGLE     ; TT XY mm
  CUSTOM_BLOCK_RECTANGLE  ; TT XY mm WH
  BLOCK_SINGLE            ; TT XY
  BLOCK_RECTANGLE         ; TT XY WH
  BLOCK_EXTRA_WIDE        ; TT XY WW \ useless
  BLOCK_EXTRA_TALL        ; TT XY HH /
  BLOCK_WIDE_FROM_LIST    ; TT XY Wm
  BLOCK_TALL_FROM_LIST    ; TT XY Hm
  BLOCK_RECT_FROM_LIST    ; TT XY Hm WW
.endenum

.proc DecodeObjectTypesAddressesL
  .byt <(DO_CustomBlockSingle-1)
  .byt <(DO_CustomBlockRectangle-1)
  .byt <(DO_BlockSingle-1)
  .byt <(DO_BlockRectangle-1)
  .byt <(DO_BlockExtraWide-1)
  .byt <(DO_BlockExtraTall-1)
  .byt <(DO_BlockWideList-1)
  .byt <(DO_BlockTallList-1)
  .byt <(DO_BlockRectList-1)
.endproc

.proc DecodeObjectTypesAddressesH
  .byt >(DO_CustomBlockSingle-1)
  .byt >(DO_CustomBlockRectangle-1)
  .byt >(DO_BlockSingle-1)
  .byt >(DO_BlockRectangle-1)
  .byt >(DO_BlockExtraWide-1)
  .byt >(DO_BlockExtraTall-1)
  .byt >(DO_BlockWideList-1)
  .byt >(DO_BlockTallList-1)
  .byt >(DO_BlockRectList-1)
.endproc

.proc ObjectTypesTable
  .byt CUSTOM_BLOCK_SINGLE,    0
  .byt CUSTOM_BLOCK_RECTANGLE, 0
  .byt BLOCK_WIDE_FROM_LIST,   0
  .byt BLOCK_TALL_FROM_LIST,   0
  .byt BLOCK_RECT_FROM_LIST,   0
  .byt BLOCK_RECTANGLE,        Metatiles::EMPTY
  .byt BLOCK_RECTANGLE,        Metatiles::BRICKS
  .byt BLOCK_RECTANGLE,        Metatiles::SOLID_BLOCK
  .byt BLOCK_RECTANGLE,        Metatiles::COIN
  .byt BLOCK_RECTANGLE,        Metatiles::GROUND_MIDDLE_M
  .byt BLOCK_RECTANGLE,        Metatiles::ROCK_MID_M
  .byt BLOCK_RECTANGLE,        Metatiles::WATER_MAIN
  .byt BLOCK_SINGLE,           Metatiles::SOLID_BLOCK
  .byt BLOCK_SINGLE,           Metatiles::SPRING
  .byt BLOCK_SINGLE,           Metatiles::SIGNPOST
  .byt BLOCK_SINGLE,           Metatiles::BRICKS
  .byt BLOCK_SINGLE,           Metatiles::PRIZE
  .byt BLOCK_SINGLE,           Metatiles::BRICKPRIZE
  .byt BLOCK_SINGLE,           Metatiles::GROUND_CLIMB_L
  .byt BLOCK_SINGLE,           Metatiles::GROUND_CLIMB_R
  .byt BLOCK_SINGLE,           Metatiles::COIN
  .byt BLOCK_SINGLE,           Metatiles::GROUND_MIDDLE_M
  .byt BLOCK_SINGLE,           Metatiles::SOLID_ROCK
  .byt BLOCK_SINGLE,           Metatiles::DOOR_TOP
  .byt BLOCK_SINGLE,           Metatiles::EXIT_DOOR_TOP
.endproc

.proc ObjectTypesList
  .byt Metatiles::EMPTY
  .byt Metatiles::BRICKS
  .byt Metatiles::PRIZE
  .byt Metatiles::USED_PRIZE
  .byt Metatiles::SOLID_BLOCK
  .byt Metatiles::LADDER
  .byt Metatiles::SPIKES
  .byt Metatiles::COIN
  .byt Metatiles::SPRING
  .byt Metatiles::GROUND_MIDDLE_M
  .byt Metatiles::WATER_MAIN
  .byt Metatiles::SOLID_LEDGE_M
  .byt Metatiles::FALLTHROUGH_LEDGE_M
  .byt Metatiles::EMPTY
  .byt Metatiles::EMPTY
  .byt Metatiles::EMPTY
  .byt Metatiles::EMPTY
.endproc