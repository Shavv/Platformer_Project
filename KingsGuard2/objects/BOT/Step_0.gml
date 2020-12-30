/// @description
#region AI

timer_init("attack_ready")

target=instance_nearest(x,y,PLAYER)

if wpn="sword" {ai_distance=40}
if wpn="hammer"{ai_distance=32}
if wpn="spear" {ai_distance=48}

//if ai_jump=0 or state=-1 {alarm[0]=-1}
if target!=noone and state!=-99
{
 ///agrressive 
 if distance_to_point(target.x,y)<=ai_distance and distance_to_point(x,target.y)<16
 and timer_attack_ready=-1
 {
  if state=0 {if target.x>x {ai_lock_xscale=1} if target.x<x {ai_lock_xscale=-1}}
  
  image_xscale=ai_lock_xscale
  weapon.image_xscale=ai_lock_xscale
  
  if target.x<x and image_xscale=-1 {ai_right=1 ai_left=0} else {
  if target.x>x and image_xscale= 1 {ai_right=0 ai_left=1}}
  
  //if target.x=x-ai_distance {ai_right=0 ai_left=0}
  //if target.x=x+ai_distance {ai_right=0 ai_left=0}
  
  ai_attack=1
  timer_attack_ready=200
  
 }
  else
 {
  //chasing
  ai_attack=0	 
  
  if target.x<x-ai_distance {ai_right=0 ai_left=1}
  if target.x>x+ai_distance {ai_right=1 ai_left=0}
  
  if (ai_right or ai_left) and place_meeting(x+xmove,y,SOLID)
  {
   ai_jump=1
   if alarm[1]=-1 {alarm[1]=15}
  }
   else
  {
  
  } 
 
 }
 
}

#endregion
#region Movement
//movement

//grav
vspd=vspd+grav	

if !place_meeting(x,y+1,SOLID)
{
  if jumps=mjumps {jumps--}
}
 else 
{
 jumps=mjumps
}

//jumping
if ai_jump and jumps>0 and state=0 and !place_meeting(x,y-1,SOLID)
{
 audio_play_sound(fx_helmie_jump,0,0)
 vspd=-f_jumpheight	 
 jumps--
 draw_xscale= .5
 draw_yscale= 1.5
}

//decrease velocity
if !ai_jump and vspd<0
{
 vspd=vspd/2	
}



//horizontal movement
xmove=ai_right-ai_left
if state=1 {hspd=xmove*(f_movespeed/2)}
if state=0 or state=-99 {hspd=xmove*f_movespeed}



//pixel perfect collision
if place_meeting(x+hspd,y,SOLID) { while(!place_meeting(x+sign(hspd),y,SOLID)) { x+=sign(hspd) } hspd=0 }
if place_meeting(x,y+vspd,SOLID) { while(!place_meeting(x,y+sign(vspd),SOLID)) { y+=sign(vspd) } vspd=0 }


//add movement
x+=hspd
y+=vspd


#endregion
#region Sprite

//sprite
if state!=1 and ai_attack=0
{
 if xmove>0 {image_xscale= 1}
 if xmove<0 {image_xscale=-1}
}

draw_xscale=lerp(draw_xscale,1,.1)
draw_yscale=lerp(draw_yscale,1,.1)

//check if on ground
if place_meeting(x,y+1,SOLID)
{
 //sprite movement
 if hspd!=0
 {
  set_sprite(sprite_move,sprite_move_speed*(hspd*image_xscale))
 
  //armor helm
  if sprite="spr_helmie"
  {
   if round(image_index)=0 {armor_y=0}
   if round(image_index)=1 {armor_y=-1}
   if round(image_index)=2 {armor_y=-2}
   if round(image_index)=3 {armor_y=0}
   if round(image_index)=4 {armor_y=-1}
   if round(image_index)=5 {armor_y=-2}
  } 
 
 }
  else
 {
  set_sprite(sprite_idle,sprite_idle_speed)	
  armor_y=0
 }
 
 
 //squash landing
 if !place_meeting(x,yprevious+1,SOLID)
 {
  audio_play_sound(fx_slime_land,0,0)
  draw_yscale=.75
  draw_xscale=1.5
 }
}
 else
{
 set_sprite(sprite_jump,sprite_jump_speed)
 armor_y=0
}

#endregion
#region Attacks

if state=0
{
 attacked=false
 if ai_attack and weapon.current_weapon!=""
 {
  weapon.image_xscale=image_xscale
  state=1	 
 }
}

#endregion
#region CC

///knockback
if state=-1
{
 ai_left=0 ai_right=0 ai_attack=0 ai_jump=0
 if place_meeting(x,y+1,SOLID)
 {
  state=0	 
 }
}


#endregion
#region death by player

if hp<=0
{
 state=-99	
 ai_left=0
 ai_right=0
 ai_jump=0
 ai_attack=0
 
}

if state=-99
{
 set_sprite(sprite_death,1)	

 var player=instance_place(x,y-1,PLAYER)
 if player!=noone
 {
  ///fx_blob
  repeat(random_range(5,20))
  {
   var i=instance_create_depth(x,y,-10,FX_BLOB)
   i.master=player
  }
  
  player.slime+=player.jumpsound
  
  audio_play_sound(asset_get_index("fx_eat_enemy_"+string(player.jumpsound)),0,0)
  if player.jumpsound<10 {player.jumpsound+=1}
  
  player.vspd=-4
  if alarm[5]=-1 {alarm[11]=5}
 }
}

#endregion