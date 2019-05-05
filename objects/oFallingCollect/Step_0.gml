/// @description Insert description here
// You can write your code in this editor

var done = false;
with oNewManager
{
	done = oNewManager.win or oNewManager.lose ;
}

// collection
if place_meeting(x, y, oChef)
{
	with oChef
	{
		collect += 1;
		ds_list_add(collected_list, other);
	}
	// make new one
	instance_create_layer(-15, -15, "Instances", oFallingCollect);
	
	// make invisible and move away
	visible = false;
	movement_speed = 0;
	x = -15;
	y = -15;
}

// falling
if not done
{
	if movement_speed > 0
	{
		if MoveToTarget()
		{
			// make new one
			instance_create_layer(-15, -15, "Instances", oFallingCollect);
			// det
			instance_destroy(self);
		}
	}
}