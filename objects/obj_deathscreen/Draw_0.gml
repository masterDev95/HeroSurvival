var _dark_surf_alpha = min(dark_surface_opacity, dark_surface_max_opacity)
var _camera = view_camera[0]
var _camera_postion = new Vector2(camera_get_view_x(_camera), camera_get_view_y(_camera))
var _camera_size = new Vector2(camera_get_view_width(_camera), camera_get_view_width(_camera)) 
var _player_position_on_surface = new Vector2(
	obj_player.x - _camera_postion.x,
	obj_player.y - _camera_postion.y
)

// Check if surfaces exist
if (!surface_exists(dark_surface))
	dark_surface = surface_create(_camera_size.x, _camera_size.y)

// Draw dark surface
surface_set_target(dark_surface)
// Draw "dark"
draw_clear_alpha(c_black, _dark_surf_alpha)

// Draw "light"
gpu_set_blendmode(bm_subtract)
draw_sprite(spr_spotlight_blend, 0, _player_position_on_surface.x, _player_position_on_surface.y)
gpu_set_blendmode(bm_normal)
surface_reset_target()

draw_surface(dark_surface, _camera_postion.x, _camera_postion.y)
