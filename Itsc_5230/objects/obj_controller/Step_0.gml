if (timer == 0) {
	audio_pause_all()
	audio_play_sound(snd_game_over, 1, false)
	room_goto(rm_gameOver)
}


