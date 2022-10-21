/**
 * Get fixed delta time in seconds.
 */
function fixed_delta_time()
{
	var max_fps = game_get_speed(gamespeed_fps);
	var delta_time_sec = delta_time / 1000000;
	return delta_time_sec * max_fps;
}