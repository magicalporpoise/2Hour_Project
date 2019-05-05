/// @description Insert description here
// You can write your code in this editor

if room == roomMenu
{
	// move rooms
	if keyboard_check_pressed(vk_space)
	{
		room_goto(roomStacker);	
	}
	// reset
	sprite_index = noone;
	win = false;
	lose = false;
	x = room_width div 2;
	y = 0;
}
else if room == roomStacker
{
	if win
	{
		//sprite_index = spriteBlob;
	
		MoveToTarget();
	
		if keyboard_check_pressed(vk_space)
		{
			room_goto(roomKitchen);	
		}
	}
}
else if room == roomKitchen
{
	// reset
	sprite_index = noone;
	win = false;
	lose = false;
	x = room_width div 2;
	y = 0;
	// continue
	if keyboard_check_pressed(vk_space)
	{
		room_goto(roomStacker);	
	}
}