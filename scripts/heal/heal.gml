/// @function		heal(_amt)
/// @param {Real}	_amt The amount of health to add
/// @desc			Heals the player by a specified amount

function heal(_amt) {
	with (obj_player) {
		if actual_state == STATE.DEAD return;
		_amt = min(_amt, max_hp - hp)
	    hp += _amt
		display_hp_update(_amt, obj_player, true)
	}
}