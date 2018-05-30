/// Moves referenced object by deltaX, deltaY.  If collisionObj is not noone,
/// this function will also handle collisions

/// @param obj
/// @param deltaX
/// @param deltaY
/// @param collisionObj

var obj = argument0;
var deltaX = argument1;
var deltaY = argument2;
var colObj = argument3;

// move in x
for (var i = 0; i < abs(deltaX); i++) {
	if (colObj == noone or !place_meeting(obj.x + sign(deltaX), obj.y, colObj))
		obj.x += sign(deltaX);
	else
		break;
}

// move in y
for (var i = 0; i < abs(deltaY); i++) {
	if (colObj == noone or !place_meeting(obj.x, obj.y + sign(deltaY), colObj))
		obj.y += sign(deltaY);
	else
		break;
}