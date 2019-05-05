/// ReorganizeAppliances()

var size = ds_list_size(appliances);
var angle = 360 / size;
var dist = 64 * log2(size);
for (var i = 0 ; i < size ; i++)
{
	var app = ds_list_find_value(appliances, i);
	
	app.x = (room_width/2) + lengthdir_x(dist, angle*i);
	app.y = (room_height/2) + lengthdir_y(dist, angle*i);
}