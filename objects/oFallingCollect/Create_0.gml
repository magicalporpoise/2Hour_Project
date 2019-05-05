/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.2;	
image_yscale = image_xscale;	

// set random x position
x = random(room_width);
y = -sprite_height;

// set falling target
movement_speed = 5;
movement_target = [x, room_height]
