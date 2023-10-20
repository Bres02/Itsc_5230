//If Player presses escape key, enables exit from game
if keyboard_check(vk_escape) game_end()

//If Player presses backspace key, restarts game
if keyboard_check(vk_backspace) game_restart()


//Basic Movement for all creatures
if keyboard_check(vk_right) x += move_speed
if keyboard_check(vk_left) x -= move_speed
if keyboard_check(vk_down) y += move_speed
if keyboard_check(vk_up) y -= move_speed

