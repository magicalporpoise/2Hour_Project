/// @description Insert description here
// You can write your code in this editor

// drop the bucket
if my_bucket.dropping or my_bucket.reeling
{
	if keyboard_check_pressed(bucket_input)
	{
		with my_bucket
		{
			if dropping
			{
				dropping = false;
				reeling = true;
				movement_target = [other.x, other.y];
			}
		}
	}
}
else if keyboard_check_pressed(bucket_input)
{
	with my_bucket
	{
		dropping = true
		movement_target = [x, room_height];
	}
}
else if MovementInput(movement_speed, movement_input_keys)
{
	// tilt
	tilt_cur_angle += tilt_mod * movement_speed;
	if tilt_cur_angle >= (tilt_max_angle) or tilt_cur_angle <= (-1*tilt_max_angle)
	{
		tilt_cur_angle = tilt_mod * tilt_max_angle;
		tilt_mod *= -1;	
	}
	// update bucket
	with my_bucket
	{
		x = other.x;
		y = other.y;
		movement_target = [other.x, other.y];
	}
}

// bucket logic
// give rats to chef
if place_meeting(x, y, oBucket)
{
	if ds_list_size(my_bucket.collected_list) > 0
	{
		for (var i = 0 ; i < ds_list_size(my_bucket.collected_list) ; i++)
		{
			// transfer
			var rat = ds_list_find_value(my_bucket.collected_list, i);
			with rat
			{
				collected = true;	
			}
			ds_list_add(collected_list, rat);
		}
		ds_list_clear(my_bucket.collected_list);
	}
}

image_angle = tilt_cur_angle;


// win state
var time_to_win = true;

with oRat
{
	if not collected then time_to_win = false;
}

if time_to_win
{
	with oNewManager
	{
		if not lose 
		{
			if not win 
			{
				//audio_play_sound(sound_win, 10, false);	
			}
			win = true;	
			player_information.visible = true;
		}
	}
}