var enemy = instance_place(x, y, obj_ennemy)
if (enemy != noone) {
    enemy.hp -= damage
	
    if (enemy.hp <= 0) {
        instance_destroy(enemy)
    }
    
    instance_destroy()
}