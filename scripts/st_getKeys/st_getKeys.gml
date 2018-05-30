/// Return an array of the keys in the symbol table

/// @param st

var st = argument0;
var arr = st_getArray(st);

var size = st_getSize(st);
if (size == 0) { return []; }  // just in case st is empty
var keys = array_create(size, 0);
var index = 0;

// search
for (var i = 0; i < array_length_1d(arr); i++) {
	if (arr[i] == noone) {
		continue;
	} else {
		keys[index] = arr[i].key;
		index++;
	}
}

return keys;