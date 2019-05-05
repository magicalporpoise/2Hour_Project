/// @description Insert description here
// You can write your code in this editor

if room == roomKitchen
{
	// make things visible
	if visible
	{
		for (var i = 0 ; i < ds_list_size(appliances) ; i++)
		{
			// transfer
			var app = ds_list_find_value(appliances, i);
			app.visible = visible;
		}
		visible = false;
	}
	
	// add new appliances
	if keyboard_check_pressed(vk_enter)
	{
		PurchaseAppliance(oAppliance);	
	}
}
else if not visible
{
	for (var i = 0 ; i < ds_list_size(appliances) ; i++)
	{
		// transfer
		var app = ds_list_find_value(appliances, i);
		app.visible = visible;
	}	
}