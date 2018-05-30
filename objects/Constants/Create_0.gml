/// @description Object to hold constants, 
/// enums, and other global data

/* Macros */
#macro INST_LAYER "Instances"  // default layer
#macro UTIL_LAYER "util"
#macro GRID_SIZE 16

/* Enums */
enum point { X=0, Y };
enum cam { ID=0, X, Y, WIDTH, HEIGHT, N };
enum gui { WW=0, WH, SCALE, GRID, N };

window_set_fullscreen(true);

/* Cameras */
camera = array_create(cam.N, 0);
camera[cam.X] = 0;
camera[cam.Y] = 0;
camera[cam.WIDTH] = 512;
camera[cam.HEIGHT] = 288;
camera[cam.ID] = camera_create_view(camera[cam.X], camera[cam.Y], 
	camera[cam.WIDTH], camera[cam.HEIGHT], 0, -1, -1, -1, 32, 32);
camera_set_begin_script(camera[cam.ID], cameraAdjust);

/* View */
var v = 0;
_entryRoom = test;
room_set_view_enabled(_entryRoom, true);
room_set_viewport(_entryRoom, v, true, 0, 0, 
	display_get_width(), display_get_height());
room_set_camera(_entryRoom, v, camera[cam.ID]);
room_goto(_entryRoom);

/* GUI */
guiVals = array_create(gui.N, 0);
guiVals[gui.WW] = window_get_width();
guiVals[gui.WH] = window_get_height();
guiVals[gui.SCALE] = guiVals[gui.WW] / Constants.camera[cam.WIDTH];
guiVals[gui.GRID] = GRID_SIZE * guiVals[gui.SCALE];