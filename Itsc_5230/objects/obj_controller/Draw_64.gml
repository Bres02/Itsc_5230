draw_set_colour(c_white)

var minutes = int64(timer / 60)
var seconds = timer % 60

if (seconds >= 10) {
	draw_text(32, 32, "Time Left: " + string(minutes) + ":" + string(seconds) + "   Lives: " + string(lives)  )
} else if (seconds > 0 and seconds < 10) {
	draw_text(32, 32, "Time Left: " + string(minutes) + ":0" + string(seconds) + "   Lives: " + string(lives))
} else {
	draw_text(32, 32, "Time Left: " + string(minutes) + ":00" + "   Lives: " + string(lives))
}

