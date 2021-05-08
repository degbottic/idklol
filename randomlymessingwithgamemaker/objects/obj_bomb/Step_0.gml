if obj_player.bombcount > -1
{
	if instance_exists(obj_player)
	{
	startbombtimer = obj_player.startbombtimer;
	if startbombtimer = 1
	{
		bombtimer -= 1;
	}
	if bombtimer <= 0
	{
		sprite_index = spr_bombexplosion;
		explosiontimer -=1;
	}
	if explosiontimer <= 0
	{
		instance_destroy();
		if obj_player.bombinstance >= 3
		{
			instance_create_layer(x,y,"bomb",obj_bomb);
			bombinstance = 0;
		}
	}
	}
	else
	{
		if startbombtimer = 1
		{
			bombtimer -= 1;
		}
		if bombtimer <= 0
		{
			sprite_index = spr_bombexplosion;
			explosiontimer -=1;
		}
		if explosiontimer <= 0
		{
			instance_destroy();
		}
	}
}
else
{
	instance_destroy();
}
if obj_player.bombcount <= -1
{
	obj_player.bombcount += 1;
}