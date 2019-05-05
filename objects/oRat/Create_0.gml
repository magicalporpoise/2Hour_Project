/// @description Insert description here
// You can write your code in this editor
//movement_input_keys = ["D", "", "A", ""];

movement_speed = 5;
movement_target = [random(room_width), y]

image_xscale = 6;
image_yscale = image_xscale;

// tilt when moving
tilt_max_angle = 90;
tilt_cur_angle = 0;
tilt_mod = 1;

// collected
collected = false;

// sprite index
sprite_index = choose(spriteRat1, spriteRat2, spriteRat3);