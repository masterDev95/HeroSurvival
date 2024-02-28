var shuriken = instance_create_layer(x,y, "Instances", obj_weapon_shuriken)
	
	shuriken.direction = point_direction(x, y, obj_ennemy.x, obj_ennemy.y);
	shuriken.speed = 4
	
