/// @description Constructor - this is the parent of all other in-game objects

// adjust depth with y position
depth = -y;

// get center point
var centerPoint = getCenterPoint(id);
xCenter = centerPoint[point.X];
yCenter = centerPoint[point.Y];