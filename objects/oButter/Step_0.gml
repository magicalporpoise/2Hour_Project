/// @description Insert description here
// You can write your code in this editor

if movement_target != noone
{
	if MoveToTarget()
	{
		movement_target = noone;
	}
}
else
{
	var rand = random(100);
	var mx, my;
	if rand < 50
	{
		mx = random(room_width);
		my = random(room_height);
	}
	else
	{
		mx = oCrab.x;
		my = oCrab.y;
	}
	movement_target = [mx, my];
}

if place_meeting(x, y, oCrab)
{
	with oManager
	{
		if not win 
		{
			if not lose 
			{
				audio_play_sound(sound_moo, 10, false);	
			}
			lose = true;	
		}
	}
}