draw_self()

if instance_exists(obj_frog) {
	if (instance_nearest(x, y, obj_frog).jump_rest == false && collision) {
		draw_text(x - 72, y - 32, "Press E to Jump!")
	}
}

