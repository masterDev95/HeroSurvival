 if (collision_circle(x, y, 45, obj_player, false, true)) {
    obj_player.hp -= damage

    obj_player.speed = 0

    obj_player.x -= lengthdir_x(5, point_direction(obj_player.x, obj_player.y, x, y))
    obj_player.y -= lengthdir_y(5, point_direction(obj_player.x, obj_player.y, x, y))
}