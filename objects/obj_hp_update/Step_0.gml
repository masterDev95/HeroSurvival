// Moving damage text over time
yy -= random_range(0.5, 5);

if (instance_exists(hurt_instance))
{
	x = hurt_instance.x + xx;
	y = hurt_instance.bbox_top + yy;
}

alpha -= 0.025;

// If object invisible destroy it
if (alpha <= 0) then instance_destroy();
