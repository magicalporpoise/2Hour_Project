/// @description Insert description here
// You can write your code in this editor

draw_text(32, 32, string(collect) + " / " + string(collect_win));

var xx = 64;
var yy = 64;
var separate = 64;
for (i = 0 ; i < ds_list_size(collected_list) ; i++)
{
	// show all the colletced shit
	var obj = ds_list_find_value(collected_list, i);
	var sprite = obj.sprite_index;
	
	draw_sprite_ext(sprite, 0, xx + separate*i, yy, obj.image_xscale, obj.image_yscale, 0, c_white, 1);
}