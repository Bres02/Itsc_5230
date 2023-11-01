// If player touches the vulture while detected, they die, and the game resets. However,
// if player is undetected, then the vulture flies overhead with no incident
if (instance_nearest(x, y, obj_detect_radius_vltr).detected) {
		lives--
	if(lives == 0)
	{
		audio_pause_all()
		audio_play_sound(snd_game_over, 1, false)
		room_goto(rm_gameOver)
	}
	else
		room_restart()
	instance_destroy()	

}

