// Formater chaque unité de temps en ajoutant "0" si nécessaire
var _second_str = (second < 10) ? "0" + string(second) : string(second);
var _minute_str = (minute < 10) ? "0" + string(minute) : string(minute);
var _hours_str = (hours < 10) ? "0" + string(hours) : string(hours);

// Créer le texte en fonction de la progression
var _text;

if (hours > 0) {
    // Afficher hh:mm:ss si une heure est passée
    _text = _hours_str + ":" + _minute_str + ":" + _second_str;
}
else if (minute > 0) {
    // Afficher mm:ss si une minute est passée
    _text = _minute_str + ":" + _second_str;
}
else {
    // Afficher uniquement les secondes avec "00" pour les minutes
    _text = "00:" + _second_str;
}

// Calculer la position pour centrer le texte
var _x_pos = view_get_wport(0) / 2 - string_width(_text) / 2;
var _y_pos = 10;

// Dessiner le texte
draw_text(_x_pos, _y_pos, _text);
