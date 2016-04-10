.enum Metatiles
  EMPTY
  BRICKS
  BRICKPRIZE
  REPLACE_BRICK
  REPLACE_BRICK_SUB1
  REPLACE_BRICK_SUB2
  PRIZE
  INFINITE_PRIZE
  USED_PRIZE
  SOLID_BLOCK
  SPIKES
  COIN
  LADDER
  LADDER_TOP
  SPRING
  SIGNPOST
  DOOR_BOTTOM
  SPRING_DOWN
  KEY_RED
  KEY_GREEN
  KEY_BLUE
  TOGGLE_SWITCH
  TELEPORTER
  CLONE_SWITCH
  GENERIC_SWITCH
  RED_BOOTS
  GREEN_BOOTS
  GRAY_BOOTS
  BLUE_BOOTS
  CHERRY_BOMB
  CAMPFIRE
  FORCE_LEFT
  FORCE_RIGHT
  FORCE_UP
  FORCE_DOWN
  CHIP
  SPRING_PRESSED
  SOLID_LEDGE_L
  SOLID_LEDGE_M
  SOLID_LEDGE_R
  SOLID_LEDGE_S
  FALLTHROUGH_LEDGE_L
  FALLTHROUGH_LEDGE_M
  FALLTHROUGH_LEDGE_R
  FALLTHROUGH_LEDGE_S
  SOLID_ROCK
  WATER_FROZEN
  WATER_TOP
  WATER_MAIN
  WATER_BELOW_SOMETHING
  LAVA_FROZEN
  LAVA_TOP
  LAVA_MAIN
  LAVA_BELOW_SOMETHING
  GROUND_TOP_L
  GROUND_TOP_M
  GROUND_TOP_R
  GROUND_MIDDLE_L
  GROUND_MIDDLE_M
  GROUND_MIDDLE_R
  GROUND_INNER_LEFT
  GROUND_INNER_RIGHT
  GROUND_INNER_BOTH
  GROUND_NARROW_TOP
  GROUND_NARROW_SIDES
  GROUND_CLIMB_L
  GROUND_CLIMB_R
  ROCK_TOP_L
  ROCK_TOP_M
  ROCK_TOP_R
  ROCK_MID_L
  ROCK_MID_M
  ROCK_MID_R
  ROCK_BOT_L
  ROCK_BOT_M
  ROCK_BOT_R
  SKY_DITHER_1
  SKY_DITHER_2
  SKY_DITHER_3
  SKY_DITHER_4
  DOOR_TOP
  EXIT_DOOR_TOP
  DOWN_SPRING_PRESSED
  TOGGLE_BLOCK_OFF
  TOGGLE_BLOCK_ON
  CLONER
  LOCK_RED
  LOCK_GREEN
  LOCK_BLUE
  CHIP_SOCKET
  PICKUP_BLOCK
  PUSHABLE_BLOCK
  CAMPFIRE_OUT
  GRAVEL
  ICE
  PATH_MARKER
  CLOUD_L
  CLOUD_M
  CLOUD_R
  BG_FENCE
  BG_TALL_GRASS
  BG_FLOWER_1
  BG_FLOWER_2
  BG_FLOWER_3
  BG_FLOWER_4
  BG_UP_ARROW
  BG_DN_ARROW
  BG_BLACK
  BG_BUSH_TOP
  BG_BUSH_BOT
  BG_TRUNK_L
  BG_TRUNK_R
  BG_TREETOP_UL
  BG_TREETOP_UR
  BG_TREETOP_LL
  BG_TREETOP_LR
  BG_TRUNK
.endenum

M_FIRST_SPECIAL_MISC = Metatiles::COIN
M_FIRST_SPECIAL_WALL = Metatiles::LOCK_RED
M_FIRST_SPECIAL_CEILING = Metatiles::PRIZE
.proc MetatilePalettes
  .byt M_PAL_0 ;EMPTY
  .byt M_PAL_2 ;BRICKS
  .byt M_PAL_2 ;BRICKPRIZE
  .byt M_PAL_2 ;REPLACE_BRICK
  .byt M_PAL_2 ;REPLACE_BRICK_SUB1
  .byt M_PAL_2 ;REPLACE_BRICK_SUB2
  .byt M_PAL_2 ;PRIZE
  .byt M_PAL_2 ;INFINITE_PRIZE
  .byt M_PAL_2 ;USED_PRIZE
  .byt M_PAL_1 ;SOLID_BLOCK
  .byt M_PAL_1 ;SPIKES
  .byt M_PAL_2 ;COIN
  .byt M_PAL_2 ;LADDER
  .byt M_PAL_2 ;LADDER_TOP
  .byt M_PAL_2 ;SPRING
  .byt M_PAL_2 ;SIGNPOST
  .byt M_PAL_1 ;DOOR_BOTTOM
  .byt M_PAL_0 ;SPRING_DOWN
  .byt M_PAL_2 ;KEY_RED
  .byt M_PAL_0 ;KEY_GREEN
  .byt M_PAL_3 ;KEY_BLUE
  .byt M_PAL_0 ;TOGGLE_SWITCH
  .byt M_PAL_2 ;TELEPORTER
  .byt M_PAL_2 ;CLONE_SWITCH
  .byt M_PAL_1 ;GENERIC_SWITCH
  .byt M_PAL_2 ;RED_BOOTS
  .byt M_PAL_0 ;GREEN_BOOTS
  .byt M_PAL_1 ;GRAY_BOOTS
  .byt M_PAL_3 ;BLUE_BOOTS
  .byt M_PAL_2 ;CHERRY_BOMB
  .byt M_PAL_2 ;CAMPFIRE
  .byt M_PAL_0 ;FORCE_LEFT
  .byt M_PAL_0 ;FORCE_RIGHT
  .byt M_PAL_0 ;FORCE_UP
  .byt M_PAL_0 ;FORCE_DOWN
  .byt M_PAL_1 ;CHIP
  .byt M_PAL_2 ;SPRING_PRESSED
  .byt M_PAL_1 ;SOLID_LEDGE_L
  .byt M_PAL_1 ;SOLID_LEDGE_M
  .byt M_PAL_1 ;SOLID_LEDGE_R
  .byt M_PAL_1 ;SOLID_LEDGE_S
  .byt M_PAL_1 ;FALLTHROUGH_LEDGE_L
  .byt M_PAL_1 ;FALLTHROUGH_LEDGE_M
  .byt M_PAL_1 ;FALLTHROUGH_LEDGE_R
  .byt M_PAL_1 ;FALLTHROUGH_LEDGE_S
  .byt M_PAL_1 ;SOLID_ROCK
  .byt M_PAL_1 ;WATER_FROZEN
  .byt M_PAL_1 ;WATER_TOP
  .byt M_PAL_1 ;WATER_MAIN
  .byt M_PAL_1 ;WATER_BELOW_SOMETHING
  .byt M_PAL_3 ;LAVA_FROZEN
  .byt M_PAL_3 ;LAVA_TOP
  .byt M_PAL_3 ;LAVA_MAIN
  .byt M_PAL_3 ;LAVA_BELOW_SOMETHING
  .byt M_PAL_0 ;GROUND_TOP_L
  .byt M_PAL_0 ;GROUND_TOP_M
  .byt M_PAL_0 ;GROUND_TOP_R
  .byt M_PAL_0 ;GROUND_MIDDLE_L
  .byt M_PAL_0 ;GROUND_MIDDLE_M
  .byt M_PAL_0 ;GROUND_MIDDLE_R
  .byt M_PAL_0 ;GROUND_INNER_LEFT
  .byt M_PAL_0 ;GROUND_INNER_RIGHT
  .byt M_PAL_0 ;GROUND_INNER_BOTH
  .byt M_PAL_0 ;GROUND_NARROW_TOP
  .byt M_PAL_0 ;GROUND_NARROW_SIDES
  .byt M_PAL_0 ;GROUND_CLIMB_L
  .byt M_PAL_0 ;GROUND_CLIMB_R
  .byt M_PAL_1 ;ROCK_TOP_L
  .byt M_PAL_1 ;ROCK_TOP_M
  .byt M_PAL_1 ;ROCK_TOP_R
  .byt M_PAL_1 ;ROCK_MID_L
  .byt M_PAL_1 ;ROCK_MID_M
  .byt M_PAL_1 ;ROCK_MID_R
  .byt M_PAL_1 ;ROCK_BOT_L
  .byt M_PAL_1 ;ROCK_BOT_M
  .byt M_PAL_1 ;ROCK_BOT_R
  .byt M_PAL_1 ;SKY_DITHER_1
  .byt M_PAL_1 ;SKY_DITHER_2
  .byt M_PAL_1 ;SKY_DITHER_3
  .byt M_PAL_1 ;SKY_DITHER_4
  .byt M_PAL_1 ;DOOR_TOP
  .byt M_PAL_1 ;EXIT_DOOR_TOP
  .byt M_PAL_2 ;DOWN_SPRING_PRESSED
  .byt M_PAL_0 ;TOGGLE_BLOCK_OFF
  .byt M_PAL_0 ;TOGGLE_BLOCK_ON
  .byt M_PAL_1 ;CLONER
  .byt M_PAL_2 ;LOCK_RED
  .byt M_PAL_0 ;LOCK_GREEN
  .byt M_PAL_3 ;LOCK_BLUE
  .byt M_PAL_1 ;CHIP_SOCKET
  .byt M_PAL_1 ;PICKUP_BLOCK
  .byt M_PAL_1 ;PUSHABLE_BLOCK
  .byt M_PAL_2 ;CAMPFIRE_OUT
  .byt M_PAL_1 ;GRAVEL
  .byt M_PAL_0 ;ICE
  .byt M_PAL_0 ;PATH_MARKER
  .byt M_PAL_1 ;CLOUD_L
  .byt M_PAL_1 ;CLOUD_M
  .byt M_PAL_1 ;CLOUD_R
  .byt M_PAL_2 ;BG_FENCE
  .byt M_PAL_0 ;BG_TALL_GRASS
  .byt M_PAL_0 ;BG_FLOWER_1
  .byt M_PAL_0 ;BG_FLOWER_2
  .byt M_PAL_2 ;BG_FLOWER_3
  .byt M_PAL_2 ;BG_FLOWER_4
  .byt M_PAL_0 ;BG_UP_ARROW
  .byt M_PAL_0 ;BG_DN_ARROW
  .byt M_PAL_1 ;BG_BLACK
  .byt M_PAL_0 ;BG_BUSH_TOP
  .byt M_PAL_0 ;BG_BUSH_BOT
  .byt M_PAL_2 ;BG_TRUNK_L
  .byt M_PAL_2 ;BG_TRUNK_R
  .byt M_PAL_0 ;BG_TREETOP_UL
  .byt M_PAL_0 ;BG_TREETOP_UR
  .byt M_PAL_0 ;BG_TREETOP_LL
  .byt M_PAL_0 ;BG_TREETOP_LR
  .byt M_PAL_2 ;BG_TRUNK
.endproc

.pushseg
.code
.proc MetatileFlags
  .byt M_EMPTY ;EMPTY
  .byt M_SOLID_ALL|M_SOLID_TOP|M_BRICKS ;BRICKS
  .byt M_SOLID_ALL|M_SOLID_TOP|M_BRICKS ;BRICKPRIZE
  .byt M_SOLID_ALL|M_SOLID_TOP|M_BRICKS ;REPLACE_BRICK
  .byt M_SOLID_ALL|M_SOLID_TOP|M_BRICKS ;REPLACE_BRICK_SUB1
  .byt M_SOLID_ALL|M_SOLID_TOP|M_BRICKS ;REPLACE_BRICK_SUB2
  .byt M_SOLID_ALL|M_SOLID_TOP|M_SPECIAL_CEILING ;PRIZE
  .byt M_SOLID_ALL|M_SOLID_TOP|M_SPECIAL_CEILING ;INFINITE_PRIZE
  .byt M_SOLID_ALL|M_SOLID_TOP ;USED_PRIZE
  .byt M_SOLID_ALL|M_SOLID_TOP ;SOLID_BLOCK
  .byt M_SOLID_ALL|M_SOLID_TOP|M_SPECIAL_GROUND ;SPIKES
  .byt M_EMPTY|M_SPECIAL_MISC ;COIN
  .byt M_SPECIAL_MISC|M_POST_PROCESS ;LADDER
  .byt M_SOLID_TOP|M_SPECIAL_MISC ;LADDER_TOP
  .byt M_EMPTY|M_SPECIAL_MISC ;SPRING
  .byt M_EMPTY|M_SPECIAL_MISC ;SIGNPOST
  .byt M_SPECIAL_MISC ;DOOR_BOTTOM
  .byt M_SPECIAL_MISC ;SPRING_DOWN
  .byt M_SPECIAL_MISC ;KEY_RED
  .byt M_SPECIAL_MISC ;KEY_GREEN
  .byt M_SPECIAL_MISC ;KEY_BLUE
  .byt M_SPECIAL_MISC ;TOGGLE_SWITCH
  .byt M_SPECIAL_MISC ;TELEPORTER
  .byt M_SPECIAL_MISC ;CLONE_SWITCH
  .byt M_SPECIAL_MISC ;GENERIC_SWITCH
  .byt M_SPECIAL_MISC ;RED_BOOTS
  .byt M_SPECIAL_MISC ;GREEN_BOOTS
  .byt M_SPECIAL_MISC ;GRAY_BOOTS
  .byt M_SPECIAL_MISC ;BLUE_BOOTS
  .byt M_SPECIAL_MISC ;CHERRY_BOMB
  .byt M_SPECIAL_MISC ;CAMPFIRE
  .byt M_SPECIAL_MISC ;FORCE_LEFT
  .byt M_SPECIAL_MISC ;FORCE_RIGHT
  .byt M_SPECIAL_MISC ;FORCE_UP
  .byt M_SPECIAL_MISC ;FORCE_DOWN
  .byt M_SPECIAL_MISC ;CHIP
  .byt M_EMPTY ;SPRING_PRESSED
  .byt M_SOLID_TOP ;SOLID_LEDGE_L
  .byt M_SOLID_TOP|M_POST_PROCESS ;SOLID_LEDGE_M
  .byt M_SOLID_TOP ;SOLID_LEDGE_R
  .byt M_SOLID_TOP ;SOLID_LEDGE_S
  .byt M_SOLID_TOP|M_FALLABLE_LEDGE ;FALLTHROUGH_LEDGE_L
  .byt M_SOLID_TOP|M_FALLABLE_LEDGE|M_POST_PROCESS ;FALLTHROUGH_LEDGE_M
  .byt M_SOLID_TOP|M_FALLABLE_LEDGE ;FALLTHROUGH_LEDGE_R
  .byt M_SOLID_TOP|M_FALLABLE_LEDGE ;FALLTHROUGH_LEDGE_S
  .byt M_SOLID_ALL|M_SOLID_TOP ;SOLID_ROCK
  .byt M_SOLID_TOP|M_WATER|M_ICE ;WATER_FROZEN
  .byt M_WATER ;WATER_TOP
  .byt M_WATER|M_POST_PROCESS ;WATER_MAIN
  .byt M_WATER ;WATER_BELOW_SOMETHING
  .byt M_LAVA|M_SOLID_TOP|M_ICE ;LAVA_FROZEN
  .byt M_LAVA ;LAVA_TOP
  .byt M_LAVA|M_POST_PROCESS ;LAVA_MAIN
  .byt M_LAVA ;LAVA_BELOW_SOMETHING
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_TOP_L
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_TOP_M
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_TOP_R
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_MIDDLE_L
  .byt M_SOLID_ALL|M_SOLID_TOP|M_POST_PROCESS ;GROUND_MIDDLE_M
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_MIDDLE_R
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_INNER_LEFT
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_INNER_RIGHT
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_INNER_BOTH
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_NARROW_TOP
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_NARROW_SIDES
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_CLIMB_L
  .byt M_SOLID_ALL|M_SOLID_TOP ;GROUND_CLIMB_R
  .byt M_SOLID_ALL|M_SOLID_TOP ;ROCK_TOP_L
  .byt M_SOLID_ALL|M_SOLID_TOP ;ROCK_TOP_M
  .byt M_SOLID_ALL|M_SOLID_TOP ;ROCK_TOP_R
  .byt M_SOLID_ALL|M_SOLID_TOP ;ROCK_MID_L
  .byt M_SOLID_ALL|M_SOLID_TOP|M_POST_PROCESS ;ROCK_MID_M
  .byt M_SOLID_ALL|M_SOLID_TOP ;ROCK_MID_R
  .byt M_SOLID_ALL|M_SOLID_TOP ;ROCK_BOT_L
  .byt M_SOLID_ALL|M_SOLID_TOP ;ROCK_BOT_M
  .byt M_SOLID_ALL|M_SOLID_TOP ;ROCK_BOT_R
  .byt M_EMPTY ;SKY_DITHER_1
  .byt M_EMPTY ;SKY_DITHER_2
  .byt M_EMPTY ;SKY_DITHER_3
  .byt M_EMPTY ;SKY_DITHER_4
  .byt M_EMPTY ;DOOR_TOP
  .byt M_EMPTY ;EXIT_DOOR_TOP
  .byt M_EMPTY ;DOWN_SPRING_PRESSED
  .byt M_EMPTY ;TOGGLE_BLOCK_OFF
  .byt M_SOLID_TOP|M_SOLID_ALL ;TOGGLE_BLOCK_ON
  .byt M_EMPTY ;CLONER
  .byt M_SPECIAL_WALL ;LOCK_RED
  .byt M_SPECIAL_WALL ;LOCK_GREEN
  .byt M_SPECIAL_WALL ;LOCK_BLUE
  .byt M_SPECIAL_WALL ;CHIP_SOCKET
  .byt M_SPECIAL_WALL ;PICKUP_BLOCK
  .byt M_SPECIAL_WALL ;PUSHABLE_BLOCK
  .byt M_EMPTY ;CAMPFIRE_OUT
  .byt M_EMPTY ;GRAVEL
  .byt M_ICE ;ICE
  .byt M_EMPTY ;PATH_MARKER
  .byt M_EMPTY ;CLOUD_L
  .byt M_EMPTY ;CLOUD_M
  .byt M_EMPTY ;CLOUD_R
  .byt M_EMPTY ;BG_FENCE
  .byt M_EMPTY ;BG_TALL_GRASS
  .byt M_EMPTY|M_POST_PROCESS ;BG_FLOWER_1
  .byt M_EMPTY ;BG_FLOWER_2
  .byt M_EMPTY ;BG_FLOWER_3
  .byt M_EMPTY ;BG_FLOWER_4
  .byt M_EMPTY ;BG_UP_ARROW
  .byt M_EMPTY ;BG_DN_ARROW
  .byt M_EMPTY ;BG_BLACK
  .byt M_EMPTY ;BG_BUSH_TOP
  .byt M_EMPTY|M_POST_PROCESS ;BG_BUSH_BOT
  .byt M_EMPTY|M_POST_PROCESS ;BG_TRUNK_L
  .byt M_EMPTY ;BG_TRUNK_R
  .byt M_EMPTY ;BG_TREETOP_UL
  .byt M_EMPTY ;BG_TREETOP_UR
  .byt M_EMPTY ;BG_TREETOP_LL
  .byt M_EMPTY ;BG_TREETOP_LR
  .byt M_EMPTY ;BG_TRUNK
.endproc

.popseg
.proc MetatileUL
  .byt $3f ;EMPTY
  .byt $00 ;BRICKS
  .byt $00 ;BRICKPRIZE
  .byt $00 ;REPLACE_BRICK
  .byt $00 ;REPLACE_BRICK_SUB1
  .byt $00 ;REPLACE_BRICK_SUB2
  .byt $04 ;PRIZE
  .byt $04 ;INFINITE_PRIZE
  .byt $08 ;USED_PRIZE
  .byt $0c ;SOLID_BLOCK
  .byt $12 ;SPIKES
  .byt $14 ;COIN
  .byt $10 ;LADDER
  .byt $10 ;LADDER_TOP
  .byt $3f ;SPRING
  .byt $1c ;SIGNPOST
  .byt $3c ;DOOR_BOTTOM
  .byt $2c ;SPRING_DOWN
  .byt $ac ;KEY_RED
  .byt $ac ;KEY_GREEN
  .byt $ac ;KEY_BLUE
  .byt $3f ;TOGGLE_SWITCH
  .byt $3f ;TELEPORTER
  .byt $3f ;CLONE_SWITCH
  .byt $3f ;GENERIC_SWITCH
  .byt $3f ;RED_BOOTS
  .byt $3f ;GREEN_BOOTS
  .byt $3f ;GRAY_BOOTS
  .byt $3f ;BLUE_BOOTS
  .byt $9c ;CHERRY_BOMB
  .byt $90 ;CAMPFIRE
  .byt $a4 ;FORCE_LEFT
  .byt $a6 ;FORCE_RIGHT
  .byt $a0 ;FORCE_UP
  .byt $a1 ;FORCE_DOWN
  .byt $94 ;CHIP
  .byt $3f ;SPRING_PRESSED
  .byt $57 ;SOLID_LEDGE_L
  .byt $58 ;SOLID_LEDGE_M
  .byt $58 ;SOLID_LEDGE_R
  .byt $57 ;SOLID_LEDGE_S
  .byt $67 ;FALLTHROUGH_LEDGE_L
  .byt $68 ;FALLTHROUGH_LEDGE_M
  .byt $68 ;FALLTHROUGH_LEDGE_R
  .byt $67 ;FALLTHROUGH_LEDGE_S
  .byt $52 ;SOLID_ROCK
  .byt $7d ;WATER_FROZEN
  .byt $7c ;WATER_TOP
  .byt $7e ;WATER_MAIN
  .byt $7f ;WATER_BELOW_SOMETHING
  .byt $7d ;LAVA_FROZEN
  .byt $7c ;LAVA_TOP
  .byt $7e ;LAVA_MAIN
  .byt $7f ;LAVA_BELOW_SOMETHING
  .byt $70 ;GROUND_TOP_L
  .byt $71 ;GROUND_TOP_M
  .byt $71 ;GROUND_TOP_R
  .byt $60 ;GROUND_MIDDLE_L
  .byt $73 ;GROUND_MIDDLE_M
  .byt $73 ;GROUND_MIDDLE_R
  .byt $60 ;GROUND_INNER_LEFT
  .byt $73 ;GROUND_INNER_RIGHT
  .byt $60 ;GROUND_INNER_BOTH
  .byt $70 ;GROUND_NARROW_TOP
  .byt $60 ;GROUND_NARROW_SIDES
  .byt $50 ;GROUND_CLIMB_L
  .byt $71 ;GROUND_CLIMB_R
  .byt $54 ;ROCK_TOP_L
  .byt $55 ;ROCK_TOP_M
  .byt $55 ;ROCK_TOP_R
  .byt $64 ;ROCK_MID_L
  .byt $65 ;ROCK_MID_M
  .byt $65 ;ROCK_MID_R
  .byt $64 ;ROCK_BOT_L
  .byt $65 ;ROCK_BOT_M
  .byt $65 ;ROCK_BOT_R
  .byt $3a ;SKY_DITHER_1
  .byt $3a ;SKY_DITHER_2
  .byt $3a ;SKY_DITHER_3
  .byt $3b ;SKY_DITHER_4
  .byt $20 ;DOOR_TOP
  .byt $22 ;EXIT_DOOR_TOP
  .byt $2e ;DOWN_SPRING_PRESSED
  .byt $80 ;TOGGLE_BLOCK_OFF
  .byt $84 ;TOGGLE_BLOCK_ON
  .byt $b0 ;CLONER
  .byt $a8 ;LOCK_RED
  .byt $a8 ;LOCK_GREEN
  .byt $a8 ;LOCK_BLUE
  .byt $98 ;CHIP_SOCKET
  .byt $28 ;PICKUP_BLOCK
  .byt $0c ;PUSHABLE_BLOCK
  .byt $3f ;CAMPFIRE_OUT
  .byt $3f ;GRAVEL
  .byt $00 ;ICE
  .byt $3f ;PATH_MARKER
  .byt $c0 ;CLOUD_L
  .byt $c2 ;CLOUD_M
  .byt $c4 ;CLOUD_R
  .byt $ce ;BG_FENCE
  .byt $3f ;BG_TALL_GRASS
  .byt $cc ;BG_FLOWER_1
  .byt $dc ;BG_FLOWER_2
  .byt $cc ;BG_FLOWER_3
  .byt $dc ;BG_FLOWER_4
  .byt $30 ;BG_UP_ARROW
  .byt $31 ;BG_DN_ARROW
  .byt $3c ;BG_BLACK
  .byt $3f ;BG_BUSH_TOP
  .byt $c7 ;BG_BUSH_BOT
  .byt $3f ;BG_TRUNK_L
  .byt $d3 ;BG_TRUNK_R
  .byt $3f ;BG_TREETOP_UL
  .byt $3f ;BG_TREETOP_UR
  .byt $c7 ;BG_TREETOP_LL
  .byt $3d ;BG_TREETOP_LR
  .byt $d2 ;BG_TRUNK
.endproc

.proc MetatileLL
  .byt $3f ;EMPTY
  .byt $01 ;BRICKS
  .byt $01 ;BRICKPRIZE
  .byt $01 ;REPLACE_BRICK
  .byt $01 ;REPLACE_BRICK_SUB1
  .byt $01 ;REPLACE_BRICK_SUB2
  .byt $05 ;PRIZE
  .byt $05 ;INFINITE_PRIZE
  .byt $09 ;USED_PRIZE
  .byt $0d ;SOLID_BLOCK
  .byt $13 ;SPIKES
  .byt $15 ;COIN
  .byt $10 ;LADDER
  .byt $10 ;LADDER_TOP
  .byt $18 ;SPRING
  .byt $1d ;SIGNPOST
  .byt $3c ;DOOR_BOTTOM
  .byt $3f ;SPRING_DOWN
  .byt $ad ;KEY_RED
  .byt $ad ;KEY_GREEN
  .byt $ad ;KEY_BLUE
  .byt $89 ;TOGGLE_SWITCH
  .byt $8c ;TELEPORTER
  .byt $89 ;CLONE_SWITCH
  .byt $89 ;GENERIC_SWITCH
  .byt $88 ;RED_BOOTS
  .byt $88 ;GREEN_BOOTS
  .byt $88 ;GRAY_BOOTS
  .byt $88 ;BLUE_BOOTS
  .byt $9d ;CHERRY_BOMB
  .byt $91 ;CAMPFIRE
  .byt $a5 ;FORCE_LEFT
  .byt $a7 ;FORCE_RIGHT
  .byt $a2 ;FORCE_UP
  .byt $a3 ;FORCE_DOWN
  .byt $95 ;CHIP
  .byt $1a ;SPRING_PRESSED
  .byt $3f ;SOLID_LEDGE_L
  .byt $3f ;SOLID_LEDGE_M
  .byt $3f ;SOLID_LEDGE_R
  .byt $3f ;SOLID_LEDGE_S
  .byt $3f ;FALLTHROUGH_LEDGE_L
  .byt $3f ;FALLTHROUGH_LEDGE_M
  .byt $3f ;FALLTHROUGH_LEDGE_R
  .byt $3f ;FALLTHROUGH_LEDGE_S
  .byt $62 ;SOLID_ROCK
  .byt $7e ;WATER_FROZEN
  .byt $7e ;WATER_TOP
  .byt $7e ;WATER_MAIN
  .byt $7e ;WATER_BELOW_SOMETHING
  .byt $7e ;LAVA_FROZEN
  .byt $7e ;LAVA_TOP
  .byt $7e ;LAVA_MAIN
  .byt $7e ;LAVA_BELOW_SOMETHING
  .byt $60 ;GROUND_TOP_L
  .byt $77 ;GROUND_TOP_M
  .byt $77 ;GROUND_TOP_R
  .byt $60 ;GROUND_MIDDLE_L
  .byt $73 ;GROUND_MIDDLE_M
  .byt $73 ;GROUND_MIDDLE_R
  .byt $73 ;GROUND_INNER_LEFT
  .byt $73 ;GROUND_INNER_RIGHT
  .byt $73 ;GROUND_INNER_BOTH
  .byt $60 ;GROUND_NARROW_TOP
  .byt $60 ;GROUND_NARROW_SIDES
  .byt $60 ;GROUND_CLIMB_L
  .byt $77 ;GROUND_CLIMB_R
  .byt $64 ;ROCK_TOP_L
  .byt $65 ;ROCK_TOP_M
  .byt $65 ;ROCK_TOP_R
  .byt $64 ;ROCK_MID_L
  .byt $65 ;ROCK_MID_M
  .byt $65 ;ROCK_MID_R
  .byt $74 ;ROCK_BOT_L
  .byt $75 ;ROCK_BOT_M
  .byt $75 ;ROCK_BOT_R
  .byt $3f ;SKY_DITHER_1
  .byt $3a ;SKY_DITHER_2
  .byt $3b ;SKY_DITHER_3
  .byt $3b ;SKY_DITHER_4
  .byt $3c ;DOOR_TOP
  .byt $3c ;EXIT_DOOR_TOP
  .byt $3f ;DOWN_SPRING_PRESSED
  .byt $81 ;TOGGLE_BLOCK_OFF
  .byt $85 ;TOGGLE_BLOCK_ON
  .byt $b1 ;CLONER
  .byt $a9 ;LOCK_RED
  .byt $a9 ;LOCK_GREEN
  .byt $a9 ;LOCK_BLUE
  .byt $99 ;CHIP_SOCKET
  .byt $0d ;PICKUP_BLOCK
  .byt $29 ;PUSHABLE_BLOCK
  .byt $bc ;CAMPFIRE_OUT
  .byt $bf ;GRAVEL
  .byt $00 ;ICE
  .byt $3f ;PATH_MARKER
  .byt $d0 ;CLOUD_L
  .byt $d1 ;CLOUD_M
  .byt $d4 ;CLOUD_R
  .byt $de ;BG_FENCE
  .byt $ca ;BG_TALL_GRASS
  .byt $da ;BG_FLOWER_1
  .byt $da ;BG_FLOWER_2
  .byt $da ;BG_FLOWER_3
  .byt $da ;BG_FLOWER_4
  .byt $3f ;BG_UP_ARROW
  .byt $3f ;BG_DN_ARROW
  .byt $3c ;BG_BLACK
  .byt $c5 ;BG_BUSH_TOP
  .byt $d7 ;BG_BUSH_BOT
  .byt $3f ;BG_TRUNK_L
  .byt $d3 ;BG_TRUNK_R
  .byt $c5 ;BG_TREETOP_UL
  .byt $d5 ;BG_TREETOP_UR
  .byt $d7 ;BG_TREETOP_LL
  .byt $d8 ;BG_TREETOP_LR
  .byt $d2 ;BG_TRUNK
.endproc

.proc MetatileUR
  .byt $3f ;EMPTY
  .byt $02 ;BRICKS
  .byt $02 ;BRICKPRIZE
  .byt $02 ;REPLACE_BRICK
  .byt $02 ;REPLACE_BRICK_SUB1
  .byt $02 ;REPLACE_BRICK_SUB2
  .byt $06 ;PRIZE
  .byt $06 ;INFINITE_PRIZE
  .byt $0a ;USED_PRIZE
  .byt $0e ;SOLID_BLOCK
  .byt $12 ;SPIKES
  .byt $16 ;COIN
  .byt $11 ;LADDER
  .byt $11 ;LADDER_TOP
  .byt $3f ;SPRING
  .byt $1e ;SIGNPOST
  .byt $3c ;DOOR_BOTTOM
  .byt $2d ;SPRING_DOWN
  .byt $ae ;KEY_RED
  .byt $ae ;KEY_GREEN
  .byt $ae ;KEY_BLUE
  .byt $3f ;TOGGLE_SWITCH
  .byt $3f ;TELEPORTER
  .byt $3f ;CLONE_SWITCH
  .byt $3f ;GENERIC_SWITCH
  .byt $3f ;RED_BOOTS
  .byt $3f ;GREEN_BOOTS
  .byt $3f ;GRAY_BOOTS
  .byt $3f ;BLUE_BOOTS
  .byt $9e ;CHERRY_BOMB
  .byt $92 ;CAMPFIRE
  .byt $a4 ;FORCE_LEFT
  .byt $a6 ;FORCE_RIGHT
  .byt $a0 ;FORCE_UP
  .byt $a1 ;FORCE_DOWN
  .byt $96 ;CHIP
  .byt $3f ;SPRING_PRESSED
  .byt $58 ;SOLID_LEDGE_L
  .byt $58 ;SOLID_LEDGE_M
  .byt $59 ;SOLID_LEDGE_R
  .byt $59 ;SOLID_LEDGE_S
  .byt $68 ;FALLTHROUGH_LEDGE_L
  .byt $68 ;FALLTHROUGH_LEDGE_M
  .byt $69 ;FALLTHROUGH_LEDGE_R
  .byt $69 ;FALLTHROUGH_LEDGE_S
  .byt $53 ;SOLID_ROCK
  .byt $7d ;WATER_FROZEN
  .byt $7c ;WATER_TOP
  .byt $7e ;WATER_MAIN
  .byt $7f ;WATER_BELOW_SOMETHING
  .byt $7d ;LAVA_FROZEN
  .byt $7c ;LAVA_TOP
  .byt $7e ;LAVA_MAIN
  .byt $7f ;LAVA_BELOW_SOMETHING
  .byt $71 ;GROUND_TOP_L
  .byt $71 ;GROUND_TOP_M
  .byt $72 ;GROUND_TOP_R
  .byt $73 ;GROUND_MIDDLE_L
  .byt $73 ;GROUND_MIDDLE_M
  .byt $61 ;GROUND_MIDDLE_R
  .byt $73 ;GROUND_INNER_LEFT
  .byt $61 ;GROUND_INNER_RIGHT
  .byt $61 ;GROUND_INNER_BOTH
  .byt $72 ;GROUND_NARROW_TOP
  .byt $61 ;GROUND_NARROW_SIDES
  .byt $71 ;GROUND_CLIMB_L
  .byt $51 ;GROUND_CLIMB_R
  .byt $55 ;ROCK_TOP_L
  .byt $55 ;ROCK_TOP_M
  .byt $56 ;ROCK_TOP_R
  .byt $65 ;ROCK_MID_L
  .byt $65 ;ROCK_MID_M
  .byt $66 ;ROCK_MID_R
  .byt $65 ;ROCK_BOT_L
  .byt $65 ;ROCK_BOT_M
  .byt $66 ;ROCK_BOT_R
  .byt $3f ;SKY_DITHER_1
  .byt $3a ;SKY_DITHER_2
  .byt $3b ;SKY_DITHER_3
  .byt $3b ;SKY_DITHER_4
  .byt $21 ;DOOR_TOP
  .byt $23 ;EXIT_DOOR_TOP
  .byt $2f ;DOWN_SPRING_PRESSED
  .byt $82 ;TOGGLE_BLOCK_OFF
  .byt $86 ;TOGGLE_BLOCK_ON
  .byt $b2 ;CLONER
  .byt $aa ;LOCK_RED
  .byt $aa ;LOCK_GREEN
  .byt $aa ;LOCK_BLUE
  .byt $9a ;CHIP_SOCKET
  .byt $2a ;PICKUP_BLOCK
  .byt $0e ;PUSHABLE_BLOCK
  .byt $3f ;CAMPFIRE_OUT
  .byt $3f ;GRAVEL
  .byt $00 ;ICE
  .byt $3f ;PATH_MARKER
  .byt $c1 ;CLOUD_L
  .byt $c3 ;CLOUD_M
  .byt $3f ;CLOUD_R
  .byt $cf ;BG_FENCE
  .byt $3f ;BG_TALL_GRASS
  .byt $cd ;BG_FLOWER_1
  .byt $dd ;BG_FLOWER_2
  .byt $cd ;BG_FLOWER_3
  .byt $dd ;BG_FLOWER_4
  .byt $3f ;BG_UP_ARROW
  .byt $3f ;BG_DN_ARROW
  .byt $3c ;BG_BLACK
  .byt $3f ;BG_BUSH_TOP
  .byt $c9 ;BG_BUSH_BOT
  .byt $d2 ;BG_TRUNK_L
  .byt $3f ;BG_TRUNK_R
  .byt $3f ;BG_TREETOP_UL
  .byt $3f ;BG_TREETOP_UR
  .byt $3d ;BG_TREETOP_LL
  .byt $c9 ;BG_TREETOP_LR
  .byt $d3 ;BG_TRUNK
.endproc

.proc MetatileLR
  .byt $3f ;EMPTY
  .byt $03 ;BRICKS
  .byt $03 ;BRICKPRIZE
  .byt $03 ;REPLACE_BRICK
  .byt $03 ;REPLACE_BRICK_SUB1
  .byt $03 ;REPLACE_BRICK_SUB2
  .byt $07 ;PRIZE
  .byt $07 ;INFINITE_PRIZE
  .byt $0b ;USED_PRIZE
  .byt $0f ;SOLID_BLOCK
  .byt $13 ;SPIKES
  .byt $17 ;COIN
  .byt $11 ;LADDER
  .byt $11 ;LADDER_TOP
  .byt $19 ;SPRING
  .byt $1f ;SIGNPOST
  .byt $3c ;DOOR_BOTTOM
  .byt $3f ;SPRING_DOWN
  .byt $af ;KEY_RED
  .byt $af ;KEY_GREEN
  .byt $af ;KEY_BLUE
  .byt $8b ;TOGGLE_SWITCH
  .byt $8e ;TELEPORTER
  .byt $8b ;CLONE_SWITCH
  .byt $8b ;GENERIC_SWITCH
  .byt $8a ;RED_BOOTS
  .byt $8a ;GREEN_BOOTS
  .byt $8a ;GRAY_BOOTS
  .byt $8a ;BLUE_BOOTS
  .byt $9f ;CHERRY_BOMB
  .byt $93 ;CAMPFIRE
  .byt $a5 ;FORCE_LEFT
  .byt $a7 ;FORCE_RIGHT
  .byt $a2 ;FORCE_UP
  .byt $a3 ;FORCE_DOWN
  .byt $97 ;CHIP
  .byt $1b ;SPRING_PRESSED
  .byt $3f ;SOLID_LEDGE_L
  .byt $3f ;SOLID_LEDGE_M
  .byt $3f ;SOLID_LEDGE_R
  .byt $3f ;SOLID_LEDGE_S
  .byt $3f ;FALLTHROUGH_LEDGE_L
  .byt $3f ;FALLTHROUGH_LEDGE_M
  .byt $3f ;FALLTHROUGH_LEDGE_R
  .byt $3f ;FALLTHROUGH_LEDGE_S
  .byt $63 ;SOLID_ROCK
  .byt $7e ;WATER_FROZEN
  .byt $7e ;WATER_TOP
  .byt $7e ;WATER_MAIN
  .byt $7e ;WATER_BELOW_SOMETHING
  .byt $7e ;LAVA_FROZEN
  .byt $7e ;LAVA_TOP
  .byt $7e ;LAVA_MAIN
  .byt $7e ;LAVA_BELOW_SOMETHING
  .byt $77 ;GROUND_TOP_L
  .byt $77 ;GROUND_TOP_M
  .byt $61 ;GROUND_TOP_R
  .byt $73 ;GROUND_MIDDLE_L
  .byt $73 ;GROUND_MIDDLE_M
  .byt $61 ;GROUND_MIDDLE_R
  .byt $73 ;GROUND_INNER_LEFT
  .byt $73 ;GROUND_INNER_RIGHT
  .byt $73 ;GROUND_INNER_BOTH
  .byt $61 ;GROUND_NARROW_TOP
  .byt $61 ;GROUND_NARROW_SIDES
  .byt $77 ;GROUND_CLIMB_L
  .byt $61 ;GROUND_CLIMB_R
  .byt $65 ;ROCK_TOP_L
  .byt $65 ;ROCK_TOP_M
  .byt $66 ;ROCK_TOP_R
  .byt $65 ;ROCK_MID_L
  .byt $65 ;ROCK_MID_M
  .byt $66 ;ROCK_MID_R
  .byt $75 ;ROCK_BOT_L
  .byt $75 ;ROCK_BOT_M
  .byt $76 ;ROCK_BOT_R
  .byt $3a ;SKY_DITHER_1
  .byt $3a ;SKY_DITHER_2
  .byt $3a ;SKY_DITHER_3
  .byt $3b ;SKY_DITHER_4
  .byt $3c ;DOOR_TOP
  .byt $3c ;EXIT_DOOR_TOP
  .byt $3f ;DOWN_SPRING_PRESSED
  .byt $83 ;TOGGLE_BLOCK_OFF
  .byt $87 ;TOGGLE_BLOCK_ON
  .byt $b3 ;CLONER
  .byt $ab ;LOCK_RED
  .byt $ab ;LOCK_GREEN
  .byt $ab ;LOCK_BLUE
  .byt $9b ;CHIP_SOCKET
  .byt $0f ;PICKUP_BLOCK
  .byt $2b ;PUSHABLE_BLOCK
  .byt $be ;CAMPFIRE_OUT
  .byt $bf ;GRAVEL
  .byt $00 ;ICE
  .byt $3f ;PATH_MARKER
  .byt $d1 ;CLOUD_L
  .byt $d1 ;CLOUD_M
  .byt $3f ;CLOUD_R
  .byt $df ;BG_FENCE
  .byt $cb ;BG_TALL_GRASS
  .byt $db ;BG_FLOWER_1
  .byt $db ;BG_FLOWER_2
  .byt $db ;BG_FLOWER_3
  .byt $db ;BG_FLOWER_4
  .byt $30 ;BG_UP_ARROW
  .byt $31 ;BG_DN_ARROW
  .byt $3c ;BG_BLACK
  .byt $d6 ;BG_BUSH_TOP
  .byt $d9 ;BG_BUSH_BOT
  .byt $d2 ;BG_TRUNK_L
  .byt $3f ;BG_TRUNK_R
  .byt $c6 ;BG_TREETOP_UL
  .byt $d6 ;BG_TREETOP_UR
  .byt $d8 ;BG_TREETOP_LL
  .byt $d9 ;BG_TREETOP_LR
  .byt $d3 ;BG_TRUNK
.endproc

