// Set movement direction towards player
var _dir = point_direction(x, y, player.x, player.y);
motion_set(_dir, speed);

// Check for collision with obj_enemy
var _other = instance_place(x, y, obj_enemy);

if (_other != noone) {
    // Calculate the direction from this object to the other
    var _dir_to_other = point_direction(x, y, _other.x, _other.y);
    
    // Calculate the overlap percentage for a smooth push
    var _max_size = max(abs(sprite_width), abs(sprite_height));
    var _overlap_len = lerp(2, 0, point_distance(x, y, _other.x, _other.y) / _max_size);
    
    // Apply the push to separate both objects softly
    x += lengthdir_x(_overlap_len, _dir_to_other + 180); // Move this object back
    y += lengthdir_y(_overlap_len, _dir_to_other + 180);
    
    _other.x += lengthdir_x(_overlap_len, _dir_to_other); // Push the other object away
	_other.y += lengthdir_y(_overlap_len, _dir_to_other);
}

// Set depth based on y position
depth = -y;

spawn_timer -= 1;
time_elapsed += 1 / room_speed;  // Incrémente le temps écoulé en secondes

// Vérifie si une nouvelle vague doit commencer toutes les 30 secondes
if (time_elapsed >= 30) {
    time_elapsed = 0;  // Réinitialiser le temps
    if (enemy_multiplier < 16) {  // Limiter le multiplicateur à 15 ennemis supplémentaires
        enemy_multiplier *= 2;  // Doubler le nombre d'ennemis à spawn
    }
}

// Gérer le spawn des ennemis
if (spawn_timer <= 0) {
    spawn_timer = spawn_rate;

    // Récupérer la position du héros
    var _hero_x = obj_player.x;
    var _hero_y = obj_player.y;

    // Générer des ennemis autour du héros
    for (var _i = 0; _i < enemy_multiplier; _i++) {
        var _angle = random(360);
        var _spawn_x = _hero_x + lengthdir_x(radius, _angle);
        var _spawn_y = _hero_y + lengthdir_y(radius, _angle);

        // Créer l'ennemi à cette position
        instance_create_layer(_spawn_x, _spawn_y, "Instances", obj_enemy);
    }
}
// Destroy instance if health is zero or less
if (hp <= 0) {
    instance_destroy();
}
