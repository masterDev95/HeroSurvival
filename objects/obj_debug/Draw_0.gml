if DISTANCE_LINE_DEBUG {
	draw_set_color(c_lime)
	if instance_exists(obj_coins)
		draw_line_distance_debug(obj_coins.attraction_range, obj_player, obj_coins)
	draw_set_color(c_white)
}