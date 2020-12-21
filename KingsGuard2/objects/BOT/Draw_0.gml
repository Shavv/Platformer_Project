/// @description draw
//draw_text(x-40,y-40,hp)
//draw_text(x,y-80,hspd)
draw_sprite_ext(sprite_index,image_index,x,y,draw_xscale*image_xscale,draw_yscale*image_yscale,image_angle,c_white,1)
draw_sprite_ext(spr_armor,-1,x,y+armor_y,draw_xscale*image_xscale,draw_yscale*image_yscale,image_angle,c_white,1)
