///@description effect_create_blur()
///@argument alpha
///@argument alpha_fade
///@argument depth
function effect_create_blur(argument0, argument1, argument2) {
	i=instance_create_depth(x,y,argument2,BLUR)
	i.image_alpha=argument0
	i.sprite_index=sprite_index
	i.image_index=image_index
	i.image_speed=0
	i.image_angle=image_angle
	i.image_xscale=image_xscale
	i.image_yscale=image_yscale
	i.alpha_fade=argument1



}
