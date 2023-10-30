draw_self()

if instance_exists(obj_chinchilla) {
	if (instance_nearest(x, y, obj_chinchilla).dig_rest == false && collision) {
		draw_text(x - 64, y - 32, "Press E to Dig!")
	}
}


