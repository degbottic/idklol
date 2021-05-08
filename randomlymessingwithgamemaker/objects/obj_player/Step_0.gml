// inputs

key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_run = keyboard_check(vk_shift);

// the actual movement lol

vmov = key_down - key_up;
hmov= key_right - key_left;

vwalk = vmov *walksp;
hwalk = hmov *walksp;

sprint = walksp + 2;

if key_run
{
	sprint = true;
}
else
{
	sprint = false;
}

// horizontal collision :D

if place_meeting(x+hwalk,y,obj_wall)
{
	while !place_meeting(x+sign(hwalk),y,obj_wall)
	{
		x+= sign(hwalk);
	}
	hwalk = 0
}

// vertical collision :D

if place_meeting(x,y+vwalk,obj_wall)
{
	while !place_meeting(x,y+sign(vwalk),obj_wall)
	{
		y+= sign(vwalk);
	}
	vwalk = 0
}

// horizontal collision :D (bomb)

if place_meeting(x+hwalk,y,obj_bombwall)
{
	while !place_meeting(x+sign(hwalk),y,obj_bombwall)
	{
		x+= sign(hwalk);
	}
	hwalk = 0
}

// vertical collision :D (bomb)

if place_meeting(x,y+vwalk,obj_bombwall)
{
	while !place_meeting(x,y+sign(vwalk),obj_bombwall)
	{
		y+= sign(vwalk);
	}
	vwalk = 0
}

x+= hwalk;
y+= vwalk;

// health
if hp <= 0
{
	instance_destroy();

}

// iframe tick

if iframe > 0
{
	iframe -= 1;
}

//bombs :D

if keyboard_check_pressed(ord("X"))
{
	instance_create_layer(x,y,"bomb",obj_bomb);
	startbombtimer = 1;
	bombcount -= 1;
	bombinstance += 1;
}
	
//bomb damage for player >:)

if place_meeting(x,y,obj_bomb) and obj_bomb.sprite_index = spr_bombexplosion
{
	hp -= 4;
}