var _player_id = collision_circle(x, y, attraction_range, obj_player, false, true)
if _player_id != noone {
	give_money(irandom_range(100, 250))
	instance_destroy(self)
}