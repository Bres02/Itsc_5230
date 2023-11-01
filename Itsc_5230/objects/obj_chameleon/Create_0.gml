// States of the Chameleon

enum States {
	regular,
	stealth
}


// Var "state" will keep track of the Chameleon's state at all times
state = States.regular

dest_x = 0

dest_y = 0

h_input = 0

v_input = 0

move_x = 0

move_y = 0

// Determines if Chameleon is in Stealth for other creatures
stealth = false

// Adds small delay to ability to stealth
can_stealth = true

image_xscale = 0.5
image_yscale = 0.5