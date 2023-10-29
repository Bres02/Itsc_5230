draw_set_colour(c_white)

if (global.game_over) {
	draw_set_halign(fa_center)
	draw_text(room_width / 2, room_height / 2, "Game Over! Press R to restart.")
}

var minutes = int64(timer / 60)
var seconds = timer % 60

if (seconds != 0) {
	draw_text(32, 32, "Time Left: " + string(minutes) + ":" + string(seconds))
} else {
	draw_text(32, 32, "Time Left: " + string(minutes) + ":00")
}
