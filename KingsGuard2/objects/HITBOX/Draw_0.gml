/// @description Insert description here
// You can write your code in this editor
if team=0 draw_set_color(c_blue)
if team=1 draw_set_color(c_red)

draw_set_alpha(0.5)
draw_rectangle(x,y,x+image_xscale,y+image_yscale,0)
draw_set_alpha(1)