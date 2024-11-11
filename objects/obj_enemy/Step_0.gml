// Set movement direction towards player
var _dir = point_direction(x, y, player.x, player.y);
motion_set(_dir, speed * (obj_player.actual_state == STATE.ALIVE));

// Check for collision with obj_enemy
var _other = instance_place(x, y, obj_enemy);

if (_other != noone) {
    // Calculate the direction from this object to the other
    var _dir_to_other = point_direction(x, y, _other.x, _other.y);
    
    // Calculate the overlap percentage for a smooth push
    var _max_size = max(abs(sprite_width), abs(sprite_height));
    var _overlap_len = lerp(2, 0, point_distance(x, y, _other.x, _other.y) / _max_size);
    
    // Apply the push to separate both objects softly
    x += lengthdir_x(_overlap_len, _dir_to_other + 180); // Move this object back
    y += lengthdir_y(_overlap_len, _dir_to_other + 180);
    
    _other.x += lengthdir_x(_overlap_len, _dir_to_other); // Push the other object away
	_other.y += lengthdir_y(_overlap_len, _dir_to_other);
}

// Set depth based on y position
depth = -y + room_height;

// Destroy instance if health is zero or less
if (hp <= 0) {
    instance_destroy();
}
