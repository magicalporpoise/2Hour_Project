/// @description Insert description here
// You can write your code in this editor

// economy
ratcoin = 0;

// resources
ratfood = 0;

// rats
ratworkers = ds_list_create();

// appliances
appliances = ds_list_create();
// add some dummy ones
var app = instance_create_layer(room_width div 2, room_height div 2, "Instances", oAppliance);
ds_list_add(appliances, app);

// simulation variables
simulation_speed = 1;
simulation_timer = 60;

// change vars
visible = false;