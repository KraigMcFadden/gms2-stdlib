/// Computes deltaX, deltaY given an object, destination, and speed

/// @param obj
/// @param destination_point
/// @param speed

var obj = argument0;
var dest = argument1;
var spd = argument2;

if (!is_array(dest)) {
	show_debug_message("calcMove() destination must be an array");
	return;
}

// otherwise compute deltaX, deltaY in direction of destination
var dir = point_direction(obj.x, obj.y, dest[point.X], dest[point.Y]);
var deltaX = lengthdir_x(argument2, dir);
var deltaY = lengthdir_y(argument2, dir);

var delArr = [];
delArr[point.X] = deltaX;
delArr[point.Y] = deltaY;
return delArr;