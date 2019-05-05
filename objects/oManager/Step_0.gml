/// @description Insert description here
// You can write your code in this editor

if room == roomMenu
{
	// move rooms
	sprite_index = noone;
	if keyboard_check_pressed(vk_space)
	{
		room_goto(room0);	
	}
	// reset
	win = false;
	lose = false;
	x = room_width div 2;
	y = 0;
}
else if win or lose
{
	sprite_index = spriteBlob;
	
	MoveToTarget();
	
	if keyboard_check_pressed(vk_space)
	{
		room_goto(roomMenu);	
	}
}