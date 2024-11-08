// Dessin des points de vie du joueur

var _hp = obj_player.hp; // Accède aux HP du joueur
var _max_hp = obj_player.max_hp; // Accède aux HP maximums du joueur

// Définir la position et la taille de la barre de vie
var _bar_x = 20;
var _bar_y = 20;
var _bar_width = 200;
var _bar_height = 20;

// Calculer la largeur de la barre de vie en fonction des HP actuels
var _hp_ratio = _hp / _max_hp;
var _current_hp_width = _bar_width * _hp_ratio;

// Couleur et contour de la barre de vie
draw_rectangle(_bar_x, _bar_y, _bar_x + _bar_width, _bar_y + _bar_height, false); // Contour
draw_set_color(c_red); // Couleur pour la partie remplie
draw_rectangle(_bar_x, _bar_y, _bar_x + _current_hp_width, _bar_y + _bar_height, false); // Remplissage de la barre
draw_set_color(c_white); // Remet la couleur par défaut
