/// @description Insert description here
// You can write your code in this editor

movement_speed = 6;

movement_target = noone;

image_xscale = 0.4;
image_yscale = image_xscale;

// decisions
decision_timer = 0;
decision_reset = 100;
decision_variance = 40;
//alarm_set(decision_timer, decision_reset + random_range(-decision_variance, decision_variance));