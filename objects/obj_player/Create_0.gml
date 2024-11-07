// Enum defining possible player states
enum STATE {
	ALIVE,
	DEAD
}

// Player variables
move_speed = PLAYER_SPEED
actual_level = 1
actual_exp = 0
next_level = INITIAL_NEXT_LEVEL
max_hp = 1
hp = max_hp
actual_state = STATE.ALIVE

nbr_ennemies = 10

// Spawning enemies around the player
for (var _i = 0; _i < nbr_ennemies; _i++) {
    var _distance = random_range(1000, 1000)
    var _angle = random_range(0, 360)
    var _spawn_x = x + lengthdir_x(_distance, _angle)
    var _spawn_y = y + lengthdir_y(_distance, _angle)
    instance_create_layer(_spawn_x, _spawn_y, layer, obj_enemy)
}

// Tire des shurikens
alartime_0 = 120
alarm[0] = alartime_0
