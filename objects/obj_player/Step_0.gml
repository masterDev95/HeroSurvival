// MOVEMENTS
var _hspd, _vspd

var _hkeys = -keyboard_check(obj_global.key_left) + keyboard_check(obj_global.key_right)
var _vkeys = -keyboard_check(obj_global.key_up) + keyboard_check(obj_global.key_down)

// Applying speed only if the actual state is not dead
_hspd = _hkeys * move_speed
_vspd = _vkeys * move_speed

_hspd = _hspd * (actual_state != STATE.DEAD)
_vspd = _vspd * (actual_state != STATE.DEAD)

x += _hspd
y += _vspd

// EXP MANAGEMENT
if (actual_exp >= next_level) {
	actual_level++
	next_level = get_next_level()
}

// STATE MANAGEMENT
actual_state = hp > 0 ? STATE.ALIVE : STATE.DEAD

// CLAMP HP
hp = clamp(hp, 0, max_hp) 
