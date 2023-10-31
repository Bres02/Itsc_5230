if (!my_radius.detected) {
	var dir = point_direction(last_x, last_y, x, y)
	
	direction = dir
	image_angle = dir
	
	if (dir > 90 and dir < 270) {
		image_yscale = -1
	} else {
		image_yscale = 1
	}
	
	last_x = x
	last_y = y
} else {
	path_end()
	audio_play_sound(snd_vulture, 1, false)
}


