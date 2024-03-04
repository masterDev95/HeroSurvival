// Event Collision avec le joueur (obj_ennemi)
// Réduire les points de vie du joueur de 1
if can_hurt {
	hurt(obj_player, damage)
	can_hurt = false
	alarm[0] = 25
}

// Le joueur ne peux pas passer outre l'ennemy
obj_player.speed = 0

// Reculer le joueur loin de l'ennemi
obj_player.x -= lengthdir_x(5, point_direction(obj_player.x, obj_player.y, x, y))
obj_player.y -= lengthdir_y(5, point_direction(obj_player.x, obj_player.y, x, y))
