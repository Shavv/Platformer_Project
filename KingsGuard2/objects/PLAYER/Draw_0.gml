/// @description draw
//draw_text(x,y-40,string(vspd))
//draw_text(x,y-80,"weapon "+ string(weapon.state))
draw_sprite_ext(sprite_index,image_index,x,y,draw_xscale*image_xscale,draw_yscale*image_yscale,image_angle,c_slime,1)
draw_sprite_ext(spr_armor,-1,x,y+armor_y,draw_xscale*image_xscale,draw_yscale*image_yscale,image_angle,c_white,1)
