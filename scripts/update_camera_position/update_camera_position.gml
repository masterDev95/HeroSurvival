/// @function 		update_camera_position()
/// @description	Updates the camera position based on the player's current position

function update_camera_position(){
	// Calculate view width and height
	var _view_width = camera_get_view_width(view_camera[0]);
	var _view_height = camera_get_view_height(view_camera[0]);

	// Player position
	var _player_x = obj_player.x;
	var _player_y = obj_player.y;

	// Calculate new view position
	var _half_view_width = _view_width / 2;
	var _half_view_height = _view_height / 2;

	var _min_x = 0;
	var _max_x = room_width - _view_width;
	var _min_y = 0;
	var _max_y = room_height - _view_height;

	var _new_view_x = clamp(obj_player.x - _half_view_width, _min_x, _max_x);
	var _new_view_y = clamp(obj_player.y - _half_view_height, _min_y, _max_y);

	// Set view size and position
	camera_set_view_pos(view_camera[0], _new_view_x, _new_view_y);
}