/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite(spr_items,global.item[item,ICON],x,y)
draw_set_color(c_slime)
draw_set_font(font_shop)
draw_text(x,y-10,global.item[item,COST])
//draw_text(x,y-20,global.item[item,IMAGE])