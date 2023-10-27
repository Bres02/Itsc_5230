if instance_exists(obj_chinchilla) {
	if (instance_nearest(x, y, obj_chinchilla).x > x + 128 or instance_nearest(x, y, obj_chinchilla).x < x - 128 or 
	instance_nearest(x, y, obj_chinchilla).y > y + 128 or instance_nearest(x, y, obj_chinchilla).y < y - 128) {
		collision = false
		instance_nearest(x, y, obj_chinchilla).can_dig = false
	}
}

