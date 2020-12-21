/// @description Init
state=0
team=0
stats_init()
key_init()
f_mhp=2
hp=10

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
jumpsound=1

//sprite
sprite="spr_player"
sprite_idle=asset_get_index(sprite+string("_idle"))
sprite_jump=asset_get_index(sprite+string("_jump"))
sprite_move=asset_get_index(sprite+string("_move"))
mask_index=asset_get_index(sprite+string("_mask"))


sprite_idle_speed=1
sprite_jump_speed=1
sprite_move_speed=0.8

depth=-2
draw_xscale=1
draw_yscale=1

//money
slime=0

//weapon
attacked=false
weapon=instance_create_depth(x,y,depth+1,WEAPON)
weapon.master=id
weapon.current_weapon=choose("mace","spear","sword","hammer")
weapon.team=team

//armor
spr_armor=no_sprite
armor_y=0