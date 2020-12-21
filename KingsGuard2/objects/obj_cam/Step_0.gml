/// @description follow target
vw=window_get_width()/zoom
vh=window_get_height()/zoom

camera_set_view_pos(view_camera[0],(x-(vw/2)),(y-(vh/2)))
camera_set_view_size(view_camera[0],vw,vh)

var _vw = camera_get_view_width(view_camera[0]) / 2;
var _vh = camera_get_view_height(view_camera[0]) / 2;
camera_set_view_pos(view_camera[0], x - _vw, y - _vh);

if instance_exists(target)
{
 if target=PLAYER
 {
  if target.image_xscale!=imx {dis=0 imx=target.image_xscale}
  if dis<64 {dis+=1}  
  
  //x=(lerp(x,target.x+(target.image_xscale*dis),cam_speed))
  x=(lerp(x,target.x,cam_speed))
  y=(lerp(y,target.y,cam_speed))
 }
}



if keyboard_check(vk_pageup)   {if zoom<10	  {zoom+=lerp(zoom,0.05,1)}}
if keyboard_check(vk_home)					  {zoom=1}
if keyboard_check(vk_pagedown) {if zoom>0.1   {zoom-=lerp(zoom,0.05,1)}}