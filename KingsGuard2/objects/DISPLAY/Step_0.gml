/// @description Display properties
room_set_view(room,0,true,0,0,global.ideal_width,global.ideal_height,0,0,global.ideal_width,global.ideal_height,0,0,0,0,-1)



///lock mouse in window
if window_has_focus()
{
 if mouse_free=false
 {
  //display_mouse_lock(window_get_x(), window_get_y(),window_get_width(),window_get_height());
 }
 if keyboard_check(vk_alt)
 {
  mouse_free=true
  //display_mouse_unlock()
 }
  else
 {
  mouse_free=false
 }
} 
 else 
{ 
 //display_mouse_unlock();
}

