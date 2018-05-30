/// Adjusts the location of the camera to follow the player

var following = objPlayer;

if (! instance_exists(following)) {  // handles PreCreate corner case
	return;
}

var camera = Constants.camera[cam.ID];

var vw = Constants.camera[cam.WIDTH];
var vh = Constants.camera[cam.HEIGHT];
var xx = following.xCenter - (vw / 2);
var yy = following.yCenter - (vh / 2);

xx = setWithinBounds(xx, 0, room_width - vw);
yy = setWithinBounds(yy, 0, room_height - vh);
	
camera_set_view_pos(camera, xx, yy);
Constants.camera[cam.X] = xx;
Constants.camera[cam.Y] = yy;