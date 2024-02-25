/// @function heal(_amt)
/// @param {Real} _amt The amount of health to add
/// @desc Heals the player by a specified amount

function heal(_amt) {
	with (obj_player) {
	    hp += _amt * (actual_state == STATE.ALIVE)
	}
}