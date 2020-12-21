///@description play_animation()
///@argument animation_string
///@argument animation_speed
///@argument attackframe
///@argument sound
///@argument hitbox_x
///@argument hitbox_y
///@argument hitbox_width
///@argument hitbox_height
///@argument knockback_h_direction
///@argument knockback_h_power
///@argument knockback_v_power
function basic_attack(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) {

	if skeleton_animation_get() != argument0
	{
	 skeleton_animation_set(argument0)	
	 attacking=true
	}

	var max_frames = image_number

	testvariable1=max_frames
	testvariable2=image_index+image_speed


	if image_index>argument2 and master.attacked=false
	{
	 //attack hitbox
	 script_execute(create_hitbox,argument4,argument5,argument6,argument7,argument8,argument9,argument10,dmg)
	 audio_play_sound(argument3,0,0)
	 master.attacked=true
	}


	if image_index+image_speed >= max_frames
	{
	 image_index=max_frames
	 image_speed=0
	 attacking=false
	 master.attacked=false
 
	 //end of attack
	 with (master)
	 {
	  if state=1
	  {
	   state=0
	  }
	 }

	}
	 else
	{
	 //effect_create_blur(0.5,0.1,depth)
	 image_speed=argument1	
	 attacking=true
	}





}
