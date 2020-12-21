///@description play_animation()
///@argument animation_string
///@argument animation_speed
///@argument animation_stop_at_end || true/false
function play_animation(argument0, argument1, argument2) {

	if skeleton_animation_get() != argument0
	{
	 skeleton_animation_set(argument0)	
	}

	var max_frames = skeleton_animation_get_frames(skeleton_animation_get());

	if argument2=true
	{
	 //image_index=min(image_index,max_frames-1)
	 if image_index+image_speed >= (max_frames-1)
	 {
	  image_index=max_frames-1
	  image_speed = 0
	 }
	  else
	 {
	  image_speed=argument1	
	 }
	}
	 else
	{
	 image_speed=argument1	
	}


}
