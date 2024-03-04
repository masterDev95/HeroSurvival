/// @function					hurt(_obj, _amt)
/// @param {Asset.GMObject}		_target_obj - The object to be damaged
/// @param {Real}				_amt The amount of damage to deal 
/// @description				Deals the specified amount of damage to the object passed as a parameter

function hurt(_target_obj, _amt) {
	with _target_obj {
		if actual_state == STATE.DEAD return;
		_amt = min(_amt, hp)
		hp -=  _amt
		display_hp_update(_amt, _target_obj)
	}
}