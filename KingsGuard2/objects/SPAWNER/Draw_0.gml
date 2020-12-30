/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_slime)
draw_set_alpha(1)
draw_set_font(font_waves)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text_outline(x,y,"Wave "+string(wave+1),c_slime,c_black)
draw_set_valign(fa_top)


if wave=0 and alarm[1]=-1
{
	draw_sprite(spr_keyboard,-1,959,452)	
}