function scr_shake_view(argument0) {
	//scr_shake_view(strengt)
	//scr_shake_view(20)
	camera_set_view_pos(view_camera[0],(camera_get_view_x(view_camera[0])+(-(argument0/2)+random(argument0))),camera_get_view_y(view_camera[0])+ (-(argument0/2)+random(argument0))) 
	/*
	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (-(argument0/2)+random(argument0) ));
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (-(argument0/2)+random(argument0) ));


/* end scr_shake_view */
}
