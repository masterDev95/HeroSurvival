var _hspd, _vspd

var _hkeys = -keyboard_check(obj_global.key_left) + keyboard_check(obj_global.key_right)
var _vkeys = -keyboard_check(obj_global.key_up) + keyboard_check(obj_global.key_down)

_hspd = _hkeys * move_speed
_vspd = _vkeys * move_speed

x += _hspd
y += _vspd
