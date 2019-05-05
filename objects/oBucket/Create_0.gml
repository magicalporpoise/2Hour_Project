/// @description Insert description here
// You can write your code in this editor
move_mod = 5;
movement_speed = move_mod;

movement_target = [oChef.x, oChef.y];

image_xscale = 0.25;
image_yscale = image_xscale;


// list of collected things
collected_list = ds_list_create();

// dropping
dropping = false;
reeling = false;