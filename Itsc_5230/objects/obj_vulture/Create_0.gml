my_radius = instance_nearest(x, y, obj_detect_radius_vltr)

target = obj_controller

// Add in Path to follow here
path_start(fly_path, 4, path_action_restart, true)

last_x = x

last_y = y