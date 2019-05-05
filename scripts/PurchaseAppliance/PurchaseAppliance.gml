// PurchaseAppliance(appliance)

// done within player info

var obj = argument0;

if obj.cost <= ratcoin
{
	var app = instance_create_layer(room_width div 2, room_height div 2, "Instances", obj);
	ds_list_add(appliances, app);
	ReorganizeAppliances();
	return true;
}
else return false;