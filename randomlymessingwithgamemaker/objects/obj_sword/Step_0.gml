// attack input
key_atk = mouse_check_button_pressed(mb_left);

if pickupsword = 1
{
	if key_atk = 1
	{
		sprite_index = spr_swordswing;
	}
	else
	{
		sprite_index = spr_sword;
	}

	//changes direction based on input
	if keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left)
	{
		image_xscale = 1;
		image_yscale = 1;
		image_angle = 0;
	}
	if keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right)
	{
		image_xscale = -1;
		image_yscale = 1;
		image_angle = 0;
	}
	if keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)
	{
		image_xscale = 1;
		image_yscale = 1;
		image_angle = -90;
	}
	if keyboard_check(ord("S")) || keyboard_check(vk_down)
	{
		image_xscale = 1;
		image_yscale = 1;
		image_angle = 90;
	}
	
	//changes based on movement :D
	if keyboard_check(ord("A")) || keyboard_check(vk_left)
	{
		image_xscale = 1;
		image_yscale = 1;
		image_angle = 0;
	}
	if keyboard_check(ord("D")) || keyboard_check(vk_right)
	{
		image_xscale = -1;
		image_yscale = 1;
		image_angle = 0;
	}
	if keyboard_check(ord("W")) || keyboard_check(vk_up)
	{
		image_xscale = 1;
		image_yscale = 1;
		image_angle = -90;
	}
	if keyboard_check(ord("S")) || keyboard_check(vk_down)
	{
		image_xscale = 1;
		image_yscale = 1;
		image_angle = 90;
	}

}
if obj_player.hp = 0
{
	instance_destroy();
}