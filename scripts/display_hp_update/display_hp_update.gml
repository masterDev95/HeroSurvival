/// @function                       display_hp_update(_amt, _target_obj, _is_heal)
/// @description                    This function displays an HP update for the specified target object.
/// @param {Real}                   _amt The amount of HP change to display
/// @param {Asset.GMObject}         _target_obj The object whose HP is being updated.
/// @param {Bool} _is_heal          Optional parameter to explicitly specify whether
///                                      the HP update is a healing action. Default value is false.

function display_hp_update(_amt, _target_obj, _is_heal = false){
    with _target_obj {
        var _dmg_inst = instance_create_layer(x, bbox_top, "HUD", obj_hp_update)
 
        with _dmg_inst {
            if _is_heal {
                // Set the string prefix to '+' for healing actions
                string_prefix = "+"
                color = c_lime
            }
 
            // Set the damage amount and the hurt instance
            damage_amount = _amt
            hurt_instance = _target_obj
 
            // Set random x and y offsets for visual positioning
            xx = random_range(-16,16);
            yy = random_range(-8,8);
        }
    }
 }