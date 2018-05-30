/// @description Move around

var deltaX = (keyboard_check(vk_right) or keyboard_check(ord("D")))
	- (keyboard_check(vk_left) or keyboard_check(ord("A")));
var deltaY = (keyboard_check(vk_down) or keyboard_check(ord("S")))
	- (keyboard_check(vk_up) or keyboard_check(ord("W")));
var spd = 3;

if (deltaX != 0 and deltaY != 0)
	spd /= sqrt(2);
	
move(id, deltaX*spd, deltaY*spd, objWall);