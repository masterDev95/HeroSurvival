var _middle_x = window_get_width() / 2
var _title_y = window_get_height() / 5
var _choice_y = window_get_height() * (4/5)
var _choice_sep = 12
var _choice_font_size = font_get_size(fnt_gameover_choice)
var _choice_underline_width = 100
var _choice_underline_y =
	actual_choice == CHOICE.RETRY ?
		_choice_y - _choice_sep :
		_choice_y + _choice_sep + _choice_font_size

// Draw FadeFX
draw_sprite(spr_fade_fx, 0, 0, window_get_height())

// Draw "You died"
draw_sprite(spr_you_died, 0, _middle_x, _title_y)

// Draw choice
draw_set_halign(fa_center)
draw_set_font(fnt_gameover_choice)
draw_set_color(c_white)
draw_set_valign(fa_middle)
draw_text(
	_middle_x,
	_choice_y - _choice_font_size - _choice_sep,
	"Retry"
)

draw_set_valign(fa_bottom)
draw_text(
	_middle_x,
	_choice_y + _choice_font_size + _choice_sep,
	"Leave"
)

// Underline for choice
draw_set_color(c_red)
draw_line(
	_middle_x - _choice_underline_width / 2,
	_choice_underline_y,
	_middle_x + _choice_underline_width / 2,
	_choice_underline_y
)
