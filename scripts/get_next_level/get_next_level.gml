/// @function get_next_level()
/// @return {Real} - The next level
/// @description This function returns the value of exp needed to reach the next level

function get_next_level() {
    var _actual_level = obj_player.actual_level
	return (_actual_level * EXPONENTIAL_LEVEL_FACTOR + INITIAL_NEXT_LEVEL) * _actual_level
}