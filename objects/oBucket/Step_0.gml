/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, oChef)
{
	reeling = false;
}

// pick up rats
if reeling
{
	if place_meeting(x, y, oRat)
	{
		var rat = instance_nearest(x, y, oRat);
		with rat
		{
			visible = false;
			movement_speed = 0;
			x = -15;
			y = -15;
			ds_list_add(other.collected_list, self);
		}
	}
}

if movement_target != noone then MoveToTarget();