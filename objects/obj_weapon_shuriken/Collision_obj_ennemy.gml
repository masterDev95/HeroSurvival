var _enemy = instance_place(x, y, obj_ennemy)
if (_enemy != noone) {
    _enemy.hp -= damage
	
    if (_enemy.hp <= 0) {
        instance_destroy(_enemy)
    }
    
    instance_destroy()
}