var _x_draw_text_start = 8
var _y_draw_text_start = 16
var _actual_line = 1
var _line_height = 4

var _player_state = obj_player.actual_state == STATE.ALIVE ? "En vie" : "Mort"

var _text_list = [
    "Nv. actuel: " + string(obj_player.actual_level),
    "Exp. actuel: " + string(obj_player.actual_exp),
    "Nv. suivant: " + string(obj_player.next_level),
	"",
	"Etat: " + _player_state,
	"",
	"HP: " + string(obj_player.hp),
	"Argent: " + string(obj_global.money),
]

for (var _i = 0; _i < array_length(_text_list); _i++) {
    var _y = _y_draw_text_start * _actual_line + (_actual_line - 1) * _line_height
    draw_text(_x_draw_text_start, _y, _text_list[_i])
    _actual_line++
}

var _x = view_get_wport(0)

draw_sprite(spr_d_pad, 0, _x, 0)

if keyboard_check(obj_global.key_up)
	draw_sprite(spr_d_pad, 1, _x, 0)
if keyboard_check(obj_global.key_down)
	draw_sprite(spr_d_pad, 2, _x, 0)
if keyboard_check(obj_global.key_left)
	draw_sprite(spr_d_pad, 3, _x, 0)
if keyboard_check(obj_global.key_right)
	draw_sprite(spr_d_pad, 4, _x, 0)
