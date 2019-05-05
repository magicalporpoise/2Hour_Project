/// @description Insert description here
// You can write your code in this editor

draw_self();

var xx = x;
var yy = y;
var separate = 32;
for (i = 0 ; i < ds_list_size(collected_list) ; i++)
{
	// show all the colletced shit
	var obj = ds_list_find_value(collected_list, i);
	var sprite = obj.sprite_index;
	
	draw_sprite_ext(sprite, 0, xx + separate*i, yy, 0.1, 0.1, 0, c_white, 1);
}