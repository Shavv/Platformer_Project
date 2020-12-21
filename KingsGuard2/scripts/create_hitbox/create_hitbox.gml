///@description create_hitbox()
///@argument x
///@argument y
///@argument width
///@argument height
///@argument knockback_h_direction
///@argument knockback_h_power
///@argument knockback_v_power
///@argument dmg
function create_hitbox(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {

	var hitbox
	hitbox=instance_create_depth(x+(image_xscale*argument0),y+argument1,-10,HITBOX)
	hitbox.team=team
	hitbox.alarm[0]=1
	hitbox.image_xscale=argument2*image_xscale
	hitbox.image_yscale=argument3
	hitbox.h_direction=argument4
	hitbox.h_power=argument5
	hitbox.v_power=argument6
	hitbox.dmg=argument7


}
