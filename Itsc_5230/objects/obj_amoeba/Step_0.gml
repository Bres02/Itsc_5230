//If Player presses escape key, enables exit from game
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
		image_yscale = -0.7
	} else {
		image_yscale = 0.7
	}
}

//Controls animations
if (h_input != 0 or v_input != 0) {
	sprite_index = spr_amoeba_running
} else {
	sprite_index = spr_amoeba
}


