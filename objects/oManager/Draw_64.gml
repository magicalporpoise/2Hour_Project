/// @description Insert description here
// You can write your code in this editor

if room == roomMenu
{
	draw_set_font(mainFont);
	var text = "Press Space to Play";
	var xadjust = string_length(text)*font_get_size(mainFont) div 2;
	draw_text(room_width div 2 - xadjust, room_height div 2, text);	
}