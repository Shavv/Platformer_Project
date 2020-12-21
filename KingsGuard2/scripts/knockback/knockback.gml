///@description knockback()
///@argument object
///@argument h_direction
///@argument h_power
///@argument v_power
function knockback(argument0, argument1, argument2, argument3) {

	inst=argument0
	inst.y-=2
	inst.state=-1
	inst.hspd=argument2*argument1
	inst.vspd=-argument3



}
