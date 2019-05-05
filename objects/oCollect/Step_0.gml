/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, oCrab)
{
	with oCrab
	{
		collect += 1;
	}
	// make new one
	instance_create_layer(random(room_width), random(room_height), "Instances", oCollect);
	// det
	instance_destroy(self);
}