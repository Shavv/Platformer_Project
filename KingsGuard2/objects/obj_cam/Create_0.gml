///@description camera
zoom=4//4
vw=window_get_width()/zoom
vh=window_get_height()/zoom
cam_speed=0.08

//camera = camera_create()
//vm = matrix_build_lookat(0,0,-10,0,0,0,0,1,0)
//pm = matrix_build_projection_ortho(ww,wh,1,10000)

target=PLAYER
imx=0
dis=32


///camera
view_camera[0]=camera_create_view(0,0,vw,vh,0,noone,10000,10000,10000,10000)