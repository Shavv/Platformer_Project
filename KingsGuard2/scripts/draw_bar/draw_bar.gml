/// @description draw_bar(x,y,width,height,value,maxvalue,color,backgroundcolor,outline)
/// @param x
/// @param y
/// @param width
/// @param height
/// @param value
/// @param maxvalue
/// @param color
/// @param backgroundcolor
/// @param outline
function draw_bar(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	var bar_x=argument0
	var bar_y=argument1
	var bar_width=argument2
	var bar_height=argument3

	draw_rectangle_colour(bar_x,bar_y,bar_x+bar_width,bar_y+bar_height,argument7,argument7,argument7,argument7,0)
	if argument4!=0 {draw_rectangle_colour(bar_x,bar_y,bar_x+(bar_width*argument4/argument5),bar_y+bar_height,argument6,argument6,argument6,argument6,0)}
	if argument8!=-1 {draw_rectangle_colour(bar_x,bar_y,bar_x+bar_width,bar_y+bar_height,argument8,argument8,argument8,argument8,1)}



}
