var shuriken = instance_create_layer(x, y, "Instances", obj_weapon_shuriken)

var nearest_enemy = instance_nearest(x, y, obj_ennemy)

if (nearest_enemy != noone) {
    shuriken.direction = point_direction(x, y, nearest_enemy.x, nearest_enemy.y)
} else {
    shuriken.direction = random_range(0, 360)
}

shuriken.speed = 4