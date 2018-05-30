/// @description Constructor - this is the parent of all other in-game objects

// get center point
var centerPoint = getCenterPoint(id);
xCenter = centerPoint[point.X];
yCenter = centerPoint[point.Y];

// adjust depth with y position
depth = -yCenter;