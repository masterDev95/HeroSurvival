var _key_choose = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)
var _key_enter = keyboard_check_pressed(vk_enter)

if (_key_choose) actual_choice = !actual_choice

if (_key_enter) {
	switch (actual_choice) {
		case CHOICE.RETRY:
			game_restart()
			break
		case CHOICE.LEAVE:
			game_end(0)
			break
	}
}

// Lerp opacity
dark_surface_opacity = lerp(dark_surface_opacity,
							dark_surface_max_opacity,
							lerp_speed)						
