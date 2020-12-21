/// @description Init
state=0
team=1
stats_init()
f_movespeed=1

//AI
ai_target=noone
ai_jump=0
ai_attack=0
ai_left=0
ai_right=1
ai_distance=32
ai_lock_xscale=1
ai_level=0

//movement
hspd=0
vspd=0
grav=0.2
xmove=0
ymove=0

walktimer=0

//movementy
jumps=0
mjumps=2

//sprite
sprite="spr_helmie"
sprite_idle=asset_get_index(sprite+string("_idle"))
sprite_jump=asset_get_index(sprite+string("_jump"))
sprite_move=asset_get_index(sprite+string("_move"))
sprite_death=asset_get_index(sprite+string("_death"))
mask_index=asset_get_index(sprite+string("_mask"))

sprite_idle_speed=1
sprite_jump_speed=1
sprite_move_speed=0.8


depth=0
draw_xscale=1
draw_yscale=1


//weapon
attacked=false
//wpn="sword"

//armor
spr_armor=spr_helmie_helm_1
armor_y=0