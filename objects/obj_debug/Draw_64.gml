var _x_draw_text_start = 8
var _y_draw_text_start = 16
var _actual_line = 1
var _line_height = 4

var _text_list = [
    "Nv. actuel: " + string(obj_player.actual_level),
    "Exp. actuel: " + string(obj_player.actual_exp),
    "Nv. suivant: " + string(obj_player.next_level)
]

for (var i = 0; i < array_length(_text_list); i += 1) {
    var _y = _y_draw_text_start * _actual_line + _actual_line - 1 * _line_height
    draw_text(_x_draw_text_start, _y, _text_list[i])
    _actual_line++
}
