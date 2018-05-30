/// Completely deletes a symbol table from memory

/// @param st

var st = argument0;
if (st == noone || !instance_exists(st))
	return;
st_clear(st);
instance_destroy(st);