///@draw_text_outline()
///@argument x
///@argument y
///@argument string
///@argument color
///@argument outline_color
function draw_text_outline(argument0, argument1, argument2, argument3, argument4) {

	var xx,yy,str,c,o_c;
	xx=argument0
	yy=argument1
	str=argument2
	c=argument3
	o_c=argument4

	//outline
	draw_set_color(o_c)
	draw_text(xx-1,yy,str)
	draw_text(xx+1,yy,str)
	draw_text(xx,yy+1,str)
	draw_text(xx,yy-1,str)
	draw_text(xx-1,yy-1,str)
	draw_text(xx-1,yy+1,str)
	draw_text(xx+1,yy-1,str)
	draw_text(xx+1,yy+1,str)

	//middle
	draw_set_color(c)
	draw_text(xx,yy,str)



}
