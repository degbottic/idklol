//loot table stuff
randomdrop = irandom_range(0,2);

if hp <= 0
{
	if randomdrop = 0
	{
		instance_create_layer(x,y,"swandpu",obj_heart);
		instance_destroy();
	}
	if randomdrop = 1
	{
		instance_create_layer(x,y,"swandpu",obj_bombpickup);
		instance_destroy();
	}
	if randomdrop = 2
	{
		instance_destroy();
	}
}

// sword damage
if place_meeting(x,y,obj_sword) and obj_sword.sprite_index = spr_swordswing
{
	hp -= 1;
}
// bomb damage
if place_meeting(x,y,obj_bomb) and obj_bomb.sprite_index = spr_bombexplosion
{
	hp -= 4;
}
