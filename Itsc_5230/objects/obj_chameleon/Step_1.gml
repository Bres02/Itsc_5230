//Handles stealth 
if keyboard_check(ord("Q")) and can_stealth {
	
	// If we're already in stealth, then come out of stealth
	if (state == States.stealth) {
		
		audio_play_sound(snd_vanish, 1, false)
		state = States.regular
		stealth = false
		image_alpha = 1
		
		// Set a longer delay coming out of stealth
		can_stealth = false
		alarm[0] = 100
		
	} 
	
	// Else go into stealth
	else {
		
		audio_play_sound(snd_vanish, 1, false)
		state = States.stealth
		stealth = true
		image_alpha = 0.5
		
		// Set a shorter delay going into stealth
		can_stealth = false
		alarm[0] = 50
		
	}
}