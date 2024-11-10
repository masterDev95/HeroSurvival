// Incrémenter le compteur de frames
timer_frames += 1;

// Toutes les 60 frames, incrémenter les secondes
if (timer_frames >= room_speed) {
    timer_frames = 0; // Réinitialiser le compteur de frames
    second += 1;
    
    // Passer à la minute suivante après 60 secondes
    if (second >= 60) {
        second = 00;
        minute += 1;
    }
    
    // Passer à l'heure suivante après 60 minutes
    if (minute >= 60) {
        minute = 0;
        hours += 1;
    }
}