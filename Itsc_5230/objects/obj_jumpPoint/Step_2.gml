if instance_exists(obj_frog) {
	if (instance_nearest(x, y, obj_frog).x > x + 128 or instance_nearest(x, y, obj_frog).x < x - 128 or 
	instance_nearest(x, y, obj_frog).y > y + 128 or instance_nearest(x, y, obj_frog).y < y - 128) {
		collision = false
		instance_nearest(x, y, obj_frog).can_jump = false
	}
}
