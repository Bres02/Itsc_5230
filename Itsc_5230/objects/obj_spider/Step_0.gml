// First, set who the target is
if (instance_exists(obj_amoeba)) {
	target = obj_amoeba
} else if (instance_exists(obj_frog)) {
	target = obj_frog
} else if (instance_exists(obj_chameleon)) {
	target = obj_chameleon
} else if (instance_exists(obj_chinchilla)) {
	target = obj_chinchilla
}

// If the player is detected, the spider immediately pursues at a rapid pace
if (my_radius.detected and instance_exists(target)) {
	var dir = point_direction(x, y, target.x, target.y)
	
	direction = dir
	image_angle = dir
	
	if (dir > 90 and dir < 270) {
		image_yscale = -1
	} else {
		image_yscale = 1
	}
	
	speed = 20
} else {
	speed = 0
}



