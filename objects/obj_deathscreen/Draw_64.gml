// Vérifier si le joueur est mort
if (obj_player.actual_state == STATE.DEAD) {
    // Utiliser les coordonnées et dimensions de la vue
    var _view_x = view_xview[0];  
    var _view_y = view_yview[0];  
    var _view_width = view_wview[0];  
    var _view_height = view_hview[0];  

    // Dessiner un fond semi-transparent
    draw_set_alpha(0.75);
    draw_rectangle_color(_view_x, _view_y, _view_x + _view_width, _view_y + _view_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1); // Réinitialiser alpha

    // Calculer la position du texte
    var _text_x = _view_x + _view_width / 2;
    var _text_y = _view_y + _view_height / 2 - 50;

    // Dessiner le texte "You are dead"
    draw_text_color(_text_x - 50, _text_y, "You are dead", c_red, c_red, c_red, c_red, 0.75);

    // Calculer la position des boutons
    var _btn_width = 200;
    var _btn_height = 40;
    var _restart_x = _text_x - _btn_width / 2;
    var _restart_y = _text_y + 50;
    var _quit_y = _restart_y + 60;

    // Dessiner le bouton Recommencer
    draw_rectangle_color(_restart_x, _restart_y, _restart_x + _btn_width, _restart_y + _btn_height, c_white, c_white, c_white, c_white, false);
    draw_text_color(_restart_x + 70, _restart_y + 10, "Rematch", c_red, c_red, c_red, c_red, 0.75);

    // Dessiner le bouton Quitter
    draw_rectangle_color(_restart_x, _quit_y, _restart_x + _btn_width, _quit_y + _btn_height, c_white, c_white, c_white, c_white, false);
    draw_text_color(_restart_x + 70, _quit_y + 10, "Leave", c_red, c_red, c_red, c_red, 0.75);

    // Obtenir les coordonnées de la souris en fonction de la vue
    var _mouse_x_view = device_mouse_x_to_gui(0);
    var _mouse_y_view = device_mouse_y_to_gui(0);

    // Vérifier si la souris clique sur le bouton "Rematch"
    if (mouse_check_button_pressed(mb_left)) {
        if (_mouse_x_view >= _restart_x && _mouse_x_view <= _restart_x + _btn_width &&
            _mouse_y_view >= _restart_y && _mouse_y_view <= _restart_y + _btn_height) {
            // Redémarrer la partie
            room_goto(Room1);
        }
    }

    // Vérifier si la souris clique sur le bouton "Leave"
    if (mouse_check_button_pressed(mb_left)) {
        if (_mouse_x_view >= _restart_x && _mouse_x_view <= _restart_x + _btn_width &&
            _mouse_y_view >= _quit_y && _mouse_y_view <= _quit_y + _btn_height) {
            // Quitter le jeu
            game_end();
        }
    }
}
