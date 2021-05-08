//picking up the sword
if place_meeting(x,y,obj_player)
{
	x = obj_player.x;
	y = obj_player.y;
	pickupsword = 1;
	image_index = 1;

}
else
{
	sprite_index = spr_sword;
	image_xscale = 1;
	image_yscale = 1;
	image_angle = 0;
}

//makes sure the sword stays with dash
if pickupsword = 1
{
		if !place_meeting(x,y,obj_player)
	{
		x = obj_player.x;
		y = obj_player.y;
	}
}
else
{
	pickupsword = 0
}
