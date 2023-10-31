// First we scan for potential "grabbable" objects

#region scanning

if (state == States.regular) {
	var bestDistance = maxGrabDistance
	grabTarget = noone;
	
	//This checks every instance of obj_block, and choses the one closest to this instance
	//Note: since bestDistance is initialized to the value of 'maxGrabDistance',
	//objects must be closer than 'maxGrabDistance' to be considered.
	with obj_grabRock {
		//This code is being executed within an instance of obj_block (every instance, for that matter)
		//since bestDistance is declared as a local variable (it's yellow), we still have access to it in this code.
		var thisDistance = point_distance(x,y,other.x,other.y);
			
		if thisDistance < bestDistance {
			bestDistance = thisDistance
			//In this context, 'other' is obj_player
			other.grabTarget = id
		}
	}
	
}
		
#endregion

if keyboard_check_pressed(ord("E")) and state != States.stealth
{
	#region push stop/start
	
	//If we're already pushing, stop doing it.
	
	if (state == States.grabbing) {
		
		//Reset all variables for normal movement
		state = States.regular
		cur_speed = move_speed
		dir_lock = false
		hCancel = 1
		vCancel = 1
		
		//	TODO: make grabTarget stop moving (use a 'with' statement to get started)
		if (state == States.regular) with grabTarget {
			grabTarget = noone
		}
		
	}
	//If scanning (see above) found a grab target, start pushing it.
	else if instance_exists(grabTarget){
		
		state = States.grabbing
		cur_speed = pushSpeed
		dir_lock = true
		
		//Calculate grabDirection based on which axis you're closest to the grabTarget on
		if abs(x - grabTarget.x) < abs(y - grabTarget.y){
			grabDirection = GrabAxis.vertical
			hCancel = 0
		} else {
			grabDirection = GrabAxis.horizontal
			vCancel = 0
		}
	}
	#endregion
}

#region grabbing
//If grabbing, transfer the player's speed to the object they're pushing
if (state == States.grabbing) with grabTarget {
	if !place_meeting(x + (other.move_x * other.hCancel), y + (other.move_y * other.vCancel), obj_grabRock){
		x += other.move_x * other.hCancel
		y += other.move_y * other.vCancel
	} else {
		
	}
}
#endregion

#region stealth

if keyboard_check(ord("Q")) and state != States.grabbing and can_stealth {
	
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