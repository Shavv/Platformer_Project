function key_init() {
	//key init
	key_left=keyboard_check(vk_left)
	key_right=keyboard_check(vk_right)
	key_up=keyboard_check(vk_up)
	key_down=keyboard_check(vk_down)
	key_attack=keyboard_check(ord("Z"))
	key_jump=keyboard_check(ord("X"))
	key_jump_pressed=keyboard_check_pressed(ord("X"))
	key_jump_released=keyboard_check_released(ord("X"))
	key_defend=keyboard_check(ord("C"))


}
