/// @description destroy if not visible
if image_alpha>=0
{
 image_alpha-=alpha_fade		
}
 else
{
 instance_destroy()
}