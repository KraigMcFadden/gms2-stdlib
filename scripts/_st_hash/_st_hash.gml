/// Hash function

/// @param st
/// @param key

var val = argument1;
var hash = 0;

// compute string hash if val is a string
if (is_string(val)) {
	for (var i = 1; i <= string_length(val); i++) {
		hash = ord(string_char_at(val, i)) + 31*hash;
	}
	
// otherwise just modulo integer number
} else {
	hash = val;
}

return hash % st_cap(argument0);