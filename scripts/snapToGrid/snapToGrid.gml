/// Function determines the closest grid point to a given x, y

/// @param x
/// @param y
/// @param gridSize

var xx = argument0;
var yy = argument1;
var n = argument2;
var newP = array_create(2, 0);
newP[point.X] = xx div n * n;
newP[point.Y] = yy div n * n;
return newP;