if obj_player.bombcount <= 2
{
	obj_player.bombcount += 1;
	instance_destroy();
}
if obj_player.bombcount >= 3
{
	instance_destroy();
	obj_player.bombcount += 0;
}