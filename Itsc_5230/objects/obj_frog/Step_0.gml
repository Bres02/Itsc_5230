if can_jump && keyboard_check(ord("E")) && !jump_rest {

	//Obtain all relevant X and Y coordinates
	dest_x = instance_nearest(x, y, obj_jumpReceive).x
	dest_y = instance_nearest(x, y, obj_jumpReceive).y
	
	//Perform jump by moving sprite to new location
	x = dest_x
	y = dest_y
	
	//Make it so that player cannot immediately jump after performing a jump
	can_jump = false
	jump_rest = true
	
	alarm[0] = 30
	
} else {
	//If Player presses escape key, exit game
	if keyboard_check(vk_escape) game_end()

	//If Player presses backspace key, restarts game
	if keyboard_check(vk_backspace) game_restart()


	//Basic Movement for all creatures
	h_input = keyboard_check(vk_right) - keyboard_check(vk_left)
	v_input = keyboard_check(vk_down) - keyboard_check(vk_up)

	if (h_input != 0 or v_input != 0) {
		dir = point_direction(0, 0, h_input, v_input)
		move_x = lengthdir_x(move_speed, dir)
		move_y = lengthdir_y(move_speed, dir)
	
		x += move_x
		y += move_y
	
		image_angle = dir
	
		if (dir > 90 and dir < 270) {
			image_yscale = -0.5
		} else {
			image_yscale = 0.5
		}
	}
	
	//Controls animations
	if (h_input != 0 or v_input != 0) {
		sprite_index = spr_frog_running
	} else {
		sprite_index = spr_frog
	}
}


