// destroys le epic gamer wall
if place_meeting(x,y,obj_bomb) and obj_bomb.sprite_index = spr_bombexplosion
{
	instance_destroy();
}