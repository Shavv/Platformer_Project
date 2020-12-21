///@description move outside
var dir=point_direction(other.x,other.y,x,y)
if place_free(x+lengthdir_x(1,dir),y+lengthdir_y(1,dir))
{
 move_outside_all(dir,1)
}