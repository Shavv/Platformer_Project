/// @description Insert description here
// You can write your code in this editor
if speed=0 and state=0
{
 state=1
}

image_angle+=speed*10	

if state=1
{
 if distance_to_object(master)>1 {move_towards_point(master.x,master.y,1+distance_to_object(master)/5)} 
 if distance_to_object(master)<5 {instance_destroy() audio_play_sound(fx_collect_1,0,0)}
}
 else
{
	
}
