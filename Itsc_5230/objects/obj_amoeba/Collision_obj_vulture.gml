// If player touches the vulture while detected, they die, and the game resets. However,
// if player is undetected, then the vulture flies overhead with no incident
if (instance_nearest(x, y, obj_detect_radius_vltr).detected) {
	instance_destroy()
	
	global.game_over = true
}

