///
// Récupère l'expérience actuelle et l'expérience nécessaire pour le niveau suivant
var _xp = obj_player.actual_exp; // XP actuel du joueur
var _next_level_xp = obj_player.next_level; // XP nécessaire pour le prochain niveau

// Définir la position et la taille de la barre d'XP
var _screen_width = view_get_wport(0);
var _screen_heigh = view_get_hport(0)
var _bar_width = 300;
var _bar_height = 20;
var _bar_x = (_screen_width - _bar_width) / 2; // Centrer horizontalement
var _bar_y = _screen_heigh - _bar_height - 20; // Position en bas de l’écran, avec un espace de 20 pixels

// Calculer la largeur de la barre d’XP en fonction de l'XP actuel
var _xp_ratio = _xp / _next_level_xp;
var _current_xp_width = _bar_width * _xp_ratio;

// Calculer le pourcentage d'XP
var _xp_percentage = round(_xp_ratio * 100);

// Couleur et contour de la barre d'XP
draw_set_color(c_black);
draw_rectangle(_bar_x, _bar_y, _bar_x + _bar_width, _bar_y + _bar_height, false); // Contour de la barre
draw_set_color(c_blue); // Couleur pour la partie remplie
draw_rectangle(_bar_x, _bar_y, _bar_x + _current_xp_width, _bar_y + _bar_height, false); // Remplissage de la barre
draw_set_color(c_white); // Remet la couleur par défaut

// Affichage du niveau actuel du joueur au centre de la barre d'XP
draw_text(_bar_x + _bar_width / 2.5, _bar_y - 25, "Niveau " + string(obj_player.actual_level));


// Affichage du pourcentage d'XP restant au centre de la barre d'XP
draw_text(_bar_x + _bar_width / 2.1, _bar_y + (_bar_height - 20) , string(_xp_percentage) + "%");