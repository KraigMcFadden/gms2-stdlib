/// @description Set up stuff at start of room

if (room == _entryRoom) {

	view_enabled = true;
	view_set_visible(0, true);
	view_set_wport(0, display_get_width());
	view_set_hport(0, display_get_height());
	view_set_camera(0, camera[cam.ID]);

	//Resize and center viewport
	window_set_rectangle((display_get_width() - view_wport[0]) * 0.5, 
		(display_get_height() - view_hport[0]) * 0.5, view_wport[0], view_hport[0]);
	surface_resize(application_surface, view_wport[0], view_hport[0]);

	/* Room */
	GAME_SPEED = game_get_speed(gamespeed_fps);
	layer_create(1, UTIL_LAYER);  // more depth means further from camera

}