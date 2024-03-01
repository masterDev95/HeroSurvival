var _dir = point_direction(x, y, player.x, player.y)
motion_set(_dir, speed);

if (hp <= 0) {
    instance_destroy();
}