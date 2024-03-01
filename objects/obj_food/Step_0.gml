// Check if the object is in debug mode and should display distance line debug information
if (DISTANCE_LINE_DEBUG) return;

// Initialize horizontal and vertical speeds
var _hspd = 0, _vspd = 0;

// Check if the object is attracted to the player
if (!is_attracted) {
    // Check for collision between the object and the player within the attraction range
    var _collision = collision_circle(x, y, attraction_range, obj_player, false, true);
    // If a collision is detected, set the object as attracted to the player
    if (_collision != noone) {
        is_attracted = true;
    }
}

// Calculate the x and y variations within the attraction position variation threshold
var _x_var = obj_player.x + irandom_range(-attraction_pos_variation_threshold, attraction_pos_variation_threshold);
var _y_var = obj_player.y + irandom_range(-attraction_pos_variation_threshold, attraction_pos_variation_threshold);

// If the object is attracted to the player
if (is_attracted) {
    // Calculate the horizontal and vertical speeds based on the attraction speed and the x and y variations
    _hspd = attraction_speed * sign(_x_var - x);
    _vspd = attraction_speed * sign(_y_var - y);
}

// Check for collision between the object and the player
var _collision = collision_point(x, y, obj_player, false, true);
// If a collision is detected, give the player heal and destroy the object
if (_collision != noone) {
    heal(10)
    instance_destroy(self)
}

// Update the object's position based on the horizontal and vertical speeds
x += _hspd;
y += _vspd;