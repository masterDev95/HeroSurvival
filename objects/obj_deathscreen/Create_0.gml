instance_deactivate_object(self)

enum CHOICE {
	RETRY,
	LEAVE,
}

actual_choice = CHOICE.RETRY

// Create a dark surface
dark_surface = surface_create(window_get_width(), window_get_height())
dark_surface_opacity = 0
dark_surface_max_opacity = .8

lerp_speed = .1