draw_text(10, 100, "hp= " + string(obj_player.hp));
draw_text(10, 115, "bombs= " +string(obj_player.bombcount));
draw_text(10, 130, "bombinstance= " +string(obj_player.bombinstance));
if obj_player.hp = 0
{
	instance_destroy();
}
if instance_exists(obj_enemy)
{
	draw_text(10, 85, "randomloot"+ string(obj_enemy.randomdrop));
	draw_text(10, 70, "enemyhp= " +string(obj_enemy.hp));
}

