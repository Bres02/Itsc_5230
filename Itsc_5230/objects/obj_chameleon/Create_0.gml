// States of the Chameleon

enum States {
	regular,
	grabbing,
	stealth
}

enum GrabAxis {
	none,
	horizontal,
	vertical
}

// Var "state" will keep track of the Chameleon's state at all times
state = States.regular

// "grabTarget" and "grabDirection" are used for grabbing/pushing
grabTarget = noone
grabDirection = GrabAxis.none
// "grabTarget" refers to what instance is being grabbed
// "grabDirection" refers to what axis (x or y) you're moving on

dest_x = 0

dest_y = 0

h_input = 0

v_input = 0

move_x = 0

move_y = 0

// Locks sprite direction while in the "grabbing" state
dir_lock = false

// Sets speed of sprite while moving normally and while grabbing
cur_speed = move_speed

// Controls directionality of movement while grabbing
hCancel = 1
vCancel = 1

// Determines if Chameleon is in Stealth for other creatures
stealth = false

// Adds small delay to ability to stealth
can_stealth = true