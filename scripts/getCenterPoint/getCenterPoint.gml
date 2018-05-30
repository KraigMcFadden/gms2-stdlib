/// Gets center point of referenced object and return as [x, y] array

/// @param obj

var obj = argument0;

var centerPoint = [0, 0];
centerPoint[point.Y] = obj.y - obj.sprite_yoffset + (obj.sprite_height / 2);
centerPoint[point.X] = obj.x - obj.sprite_xoffset + (obj.sprite_width / 2);
return centerPoint;