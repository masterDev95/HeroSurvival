// Faire en sorte que l'ennemi se déplace vers le joueur

// Obtenir la direction vers le joueur
var _dir = point_direction(x, y, player.x, player.y);
 // Définir la direction et la vitesse de déplacement de l'ennemi
motion_set(_dir, speed);

// Event Collision avec le joueur (si besoin)
if (collision_circle(x, y, 45, obj_player, false, true)) {
	// Réduire les points de vie du joueur de 1
    player.hp -= damage; 
    
	// Trouver un autre ennemi à proximité
    var _other_enemy = instance_place(x, y, obj_ennemy_default); 
        // S'il y a une collision avec un autre ennemi et que ce n'est pas lui-même
	if (_other_enemy != noone && _other_enemy != id) {
		// Obtenir la direction opposée
        var _dir_away = point_direction(x, y, _other_enemy.x, _other_enemy.y) + 10; 
		// Définir la direction et la vitesse pour s'éloigner
	    motion_set(_dir_away, speed); 
		
    }
}
