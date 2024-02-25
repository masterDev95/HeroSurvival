/// @function                   draw_line_distance_debug(_distance, _obj1, _obj2)
/// @param {Real}               _distance   The distance between the two objects
/// @param {Asset.GMObject}     _obj1       First object to get position
/// @param {Asset.GMObject}     _obj2       Second object to get position
/// @desc                       Draws a line from one object to another

function draw_line_distance_debug(_distance, _obj1, _obj2) {
    if instance_exists(_obj1) {
        var _obj2_id = collision_circle(_obj1.x, _obj1.y, _distance, _obj2, false, true)
        if _obj2_id != noone
            draw_line(_obj1.x, _obj1.y, _obj2_id.x, _obj2_id.y)
    }
}