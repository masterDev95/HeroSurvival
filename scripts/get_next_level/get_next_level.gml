/// @function       get_next_level()
/// @return {Real}  The next level required experience points (EXP)
/// @description    This function calculates the EXP needed to reach the next level
///                 Based on the current level of the player object,
///                 it calculates the EXP required for the next level
///                 using an exponential formula with INITIAL_NEXT_LEVEL and EXPONENTIAL_LEVEL_FACTOR constants

function get_next_level() {
    var _actual_level = obj_player.actual_level  // Get the actual level of the player
    return (_actual_level * EXPONENTIAL_LEVEL_FACTOR + INITIAL_NEXT_LEVEL) * _actual_level
 }