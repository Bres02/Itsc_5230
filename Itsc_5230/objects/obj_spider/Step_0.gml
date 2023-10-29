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
	direction = point_direction(x, y, target.x, target.y)
	speed = 20
} else {
	speed = 0
}


