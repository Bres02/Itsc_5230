if keyboard_check(ord("A")) {
	instance_destroy()
	
	audio_play_sound(snd_powerup, 1, false)
	instance_create_layer(x, y, "Instances", obj_amoeba)
}

if keyboard_check(ord("F")) {
	instance_destroy()
	
	audio_play_sound(snd_powerup, 1, false)
	instance_create_layer(x, y, "Instances", obj_frog)
}

if keyboard_check(ord("C")) {
	instance_destroy()
	
	audio_play_sound(snd_powerup, 1, false)
	instance_create_layer(x, y, "Instances", obj_chameleon)
}

if keyboard_check(ord("H")) {
	instance_destroy()
	
	audio_play_sound(snd_powerup, 1, false)
	instance_create_layer(x, y, "Instances", obj_chinchilla)
}

if keyboard_check(ord("W")) {
	room_goto(rm_finish)

	audio_pause_all()

	audio_play_sound(snd_victory, 1, false)
}