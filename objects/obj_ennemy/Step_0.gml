// Obtenir la direction vers le joueur
var _dir = point_direction(x, y, player.x, player.y);
 // Définir la direction et la vitesse de déplacement de l'ennemi
motion_set(_dir, speed);

if (hp <= 0) {
    instance_destroy();
}