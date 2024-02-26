/// @function hurt(_amt)
/// @param {Real} _amt The amount of damage to deal 
/// @description Deals the specified amount of damage to the player

function hurt(_amt){
    obj_player.hp -=  _amt;
}