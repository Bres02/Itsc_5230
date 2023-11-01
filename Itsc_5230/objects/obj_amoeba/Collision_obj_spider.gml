// If player touches the spider, they die, and the game resets
instance_destroy()

lives--
if(lives == 0)
	{
	audio_pause_all()
	audio_play_sound(snd_game_over, 1, false)
	room_goto(rm_gameOver)
	}
else
	room_restart()