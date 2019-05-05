/// @description Insert description here
// You can write your code in this editor
movement_input_keys = ["D", "", "A", ""];
bucket_inputs = ["", "W", "", "S"];
bucket_input = vk_space;

movement_speed = 5;

image_xscale = 4;
image_yscale = image_xscale;

// collectibles
collect = 0;
collect_win = 1;

// missed
missed = 0;
missed_lose = 6;

// tilt when moving
tilt_max_angle = 15;
tilt_cur_angle = 0;
tilt_mod = 1;

// list of collected things
collected_list = ds_list_create();

// make a bucket
my_bucket = instance_create_layer(x, y, "Instances", oBucket);