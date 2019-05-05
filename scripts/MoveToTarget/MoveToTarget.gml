/// @desc MoveToTarget()

// from movement script
var xto = movement_target[0]; // destination x
var yto = movement_target[1]; // destination y

// direction
direction = point_direction(x, y, xto, yto);

// distances
var current_distance = point_distance(x, y, xto, yto);

// move to and reset if arrived
if current_distance < movement_speed
{
	x = xto;
	y = yto;
	return true;
}
else
{
	MoveSpeedDirection(movement_speed, direction);
	return false;
}