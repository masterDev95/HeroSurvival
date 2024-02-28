enum STATE {
	ALIVE,
	DEAD
}

move_speed = PLAYER_SPEED
actual_level = 1
actual_exp = 0
next_level = INITIAL_NEXT_LEVEL
max_hp = 100
hp = max_hp
actual_state = STATE.ALIVE

nbr_ennemies = 10

// Apparition des ennemis autour du personnage principal
for (var i = 0; i < nbr_ennemies; i++) {
    var distance = random_range(1000, 1000)
    var angle = random_range(0, 360)
    var spawn_x = x + lengthdir_x(distance, angle)
    var spawn_y = y + lengthdir_y(distance, angle)
    instance_create_layer(spawn_x, spawn_y, layer, obj_ennemy)
}

// Tire des shurikens

alartime_1 = 120
alarm[1] = alartime_1

