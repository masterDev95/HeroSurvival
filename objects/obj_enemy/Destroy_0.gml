instance_create_layer(x, y, "Instances", obj_experience)

instance_create_layer(x, y, "Instances", obj_coins)
with (obj_coins) {
    visible = false
}
give_money(irandom_range(100, 250))

