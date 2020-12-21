/// @description 
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
if key_jump_pressed and jumps>0 and state=0 and !place_meeting(x,y-1,SOLID)
{
 audio_play_sound(fx_slime_jump,0,0)
 vspd=-f_jumpheight	 
 jumps--
 draw_xscale= .5
 draw_yscale= 1.5
}

//decrease velocity
if key_jump_released and vspd<0
{
 vspd=vspd/2	
}



//horizontal movement
xmove=key_right-key_left
if state=1 {hspd=xmove*(f_movespeed/2)}
if state=0 {hspd=xmove*f_movespeed}



//pixel perfect collision
if place_meeting(x+hspd,y,SOLID) { while(!place_meeting(x+sign(hspd),y,SOLID)) { x+=sign(hspd) } hspd=0 }
if place_meeting(x,y+vspd,SOLID) { while(!place_meeting(x,y+sign(vspd),SOLID)) { y+=sign(vspd) } vspd=0 }


//add movement
x+=hspd
y+=vspd


#endregion
#region Sprite

//sprite
if state!=1
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
  if sprite="spr_player"
  {
   if round(image_index)=0 {armor_y=0}
   if round(image_index)=1 {armor_y=1}
   if round(image_index)=2 {armor_y=1}
   if round(image_index)=3 {armor_y=2}
   if round(image_index)=4 {armor_y=1}
   if round(image_index)=5 {armor_y=0}
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
 armor_y=-1
}

var florr=instance_place(x,y+1,SOLID)
if florr!=noone
{
 if florr.object_index=SOLID
 {
  jumpsound=1	
 }
}


#endregion
#region Attacks

if state=0
{
 attacked=false
 if key_attack and weapon.current_weapon!=""
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
 if place_meeting(x,y+1,SOLID)
 {
  state=0	 
 }
}


#endregion
#region death
if hp<=0
{
 hp=0
 state=-1
 if alarm[11]=-1 {audio_play_sound(fx_death,2,0) alarm[11]=1000}
 hspd=0
 vspd=0
 sprite_index=spr_player_death
}
#endregion