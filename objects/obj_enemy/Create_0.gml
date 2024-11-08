speed = 3
player = instance_find(obj_player, 0)
damage = 2
max_hp = 20
hp = max_hp
can_hurt = true
kill = 0

spawn_rate = 10000;  // Temps entre chaque spawn (en frames)
spawn_timer = 60;
radius = 1000;  // Rayon autour du héros pour le spawn des ennemis
time_elapsed = 0;  // Temps écoulé en secondes
enemy_multiplier = 1;  // Multiplieur d'ennemis à spawn
max_time = 900;  // Temps maximum en secondes (15 minutes)
