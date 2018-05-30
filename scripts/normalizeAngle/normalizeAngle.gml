/// @description Returns the angle relative to input angle - values between -180 and 180

/// @param srcAngle
/// @param angle

var srcAngle = argument0;
var angle = argument1;

var diff = angle - srcAngle;
if (diff > 180 or diff < -180) {
	diff = diff - (sign(diff) * 360);
}
return diff;