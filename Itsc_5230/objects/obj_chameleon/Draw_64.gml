if (can_stealth and state != States.stealth) {
	draw_text(32, 64, "Press Q to Stealth!")
}

if (can_stealth and state == States.stealth) {
	draw_text(32, 64, "Press Q to Un-Stealth!")
}


