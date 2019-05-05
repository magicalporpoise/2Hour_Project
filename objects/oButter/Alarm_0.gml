/// @description Insert description here
// You can write your code in this editor

// set movement target

var mx = random(room_width);
var my = random(room_height);

movement_target = [mx, my];

// reset
alarm_set(decision_timer, decision_reset + random_range(-decision_variance, decision_variance));