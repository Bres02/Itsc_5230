if instance_exists(obj_grabRock) and state != States.grabbing {
	var hori_dist = abs(instance_nearest(x, y, obj_grabRock).x - x)
	var vert_dist = abs(instance_nearest(x, y, obj_grabRock).y - y)
	
	if (hori_dist < maxGrabDistance and vert_dist < maxGrabDistance) {
		draw_text(instance_nearest(x, y, obj_grabRock).x - 72, instance_nearest(x, y, obj_grabRock).y - 32, "Press E to Grab!")
	}
}

if instance_exists(obj_grabRock) and state == States.grabbing {
	draw_text(instance_nearest(x, y, obj_grabRock).x - 84, instance_nearest(x, y, obj_grabRock).y - 32, "Press E to Release!")
}

if (can_stealth and state != States.stealth) {
	draw_text(32, 32, "Press Q to Stealth!")
}

if (can_stealth and state == States.stealth) {
	draw_text(32, 32, "Press Q to Un-Stealth!")
}
