if (timer == 0 or global.game_over) {
	room_goto(rm_gameOver)
	
	audio_pause_all()
	audio_play_sound(snd_game_over, 1, false)
}


