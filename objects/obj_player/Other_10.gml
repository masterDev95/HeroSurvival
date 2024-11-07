var _shuriken = instance_create_layer(x, y, "Instances", obj_weapon_shuriken)

var _nearest_enemy = instance_nearest(x, y, obj_enemy)

if (_nearest_enemy != noone) {
    _shuriken.direction = point_direction(x, y, _nearest_enemy.x, _nearest_enemy.y)
} else {
    _shuriken.direction = random_range(0, 360)
}

_shuriken.speed = 4