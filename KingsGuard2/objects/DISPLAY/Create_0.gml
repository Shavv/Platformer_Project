/// @description setting
global.anti_anilizing=0
global.vsync=false
game_height=480

///Display properties
mouse_free=true
global.ideal_width=0
global.ideal_height=game_height
size=2
window_width=display_get_width()//1280//
window_height=display_get_height()//720//

global.aspect_ratio=window_width/window_height//window_get_width()/window_get_height()

global.ideal_width=round(global.ideal_height*global.aspect_ratio)

//check for odd numbers
if (global.ideal_width & 1)
{
 global.ideal_width++
}


for (var i=1;i<=room_last;i++)
{
 if room_exists(i)
 {
  room_set_view(i,0,true,0,0,global.ideal_width,global.ideal_height,0,0,global.ideal_width,global.ideal_height,0,0,0,0,-1)
  room_set_view_enabled(i,true)
 }
}

if room=display_set
{
 //surface_resize(application_surface,global.ideal_width,global.ideal_height)
 surface_resize(application_surface,window_width,window_height) 
 //window_set_size(global.ideal_width*size,global.ideal_height*size)
 window_set_size(window_width,window_height)
 //window_set_fullscreen(1)
 //surface_reset_target()
}

alarm[0]=10



