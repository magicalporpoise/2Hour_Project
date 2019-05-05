/// @description Insert description here
// You can write your code in this editor
if not collected
{
	if not MoveToTarget()
	{
		// tilt
		tilt_cur_angle += tilt_mod * movement_speed;
		if tilt_cur_angle >= (tilt_max_angle) or tilt_cur_angle <= (-1*tilt_max_angle)
		{
			tilt_cur_angle = tilt_mod * tilt_max_angle;
			tilt_mod *= -1;	
		}
		// audio
		//if audio_is_paused(sound_crabmove) then audio_resume_sound(sound_crabmove);
		//else if not audio_is_playing(sound_crabmove) then audio_play_sound(sound_crabmove, 5, true);
	}
	else
	{
		//audio_pause_sound(sound_crabmove);	
		movement_target = [random(room_width), y];
	}
	image_angle = tilt_cur_angle;
}