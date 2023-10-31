draw_set_colour(c_white)

var minutes = int64(timer / 60)
var seconds = timer % 60

if (seconds >= 10) {
	draw_text(32, 32, "Time Left: " + string(minutes) + ":" + string(seconds))
} else if (seconds > 0 and seconds < 10) {
	draw_text(32, 32, "Time Left: " + string(minutes) + ":0" + string(seconds))
} else {
	draw_text(32, 32, "Time Left: " + string(minutes) + ":00")
}

