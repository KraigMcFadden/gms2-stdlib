///@description Splits a string at some delimiting character/string

/// @param string
/// @param delimiter

var str = argument0;
var del = argument1;

var i = 1;
var list = [];
var index = 0;

while (true) {
	i = string_pos(del, str);
	if (i <= 0) {
		list[index] = string_copy(str, 1, string_length(str));
		break;
	}
	list[index] = string_copy(str, 1, i - 1);  // take the first occurrence
	index++;
	str = string_copy(str, i + string_length(del), 
		string_length(str) - i - string_length(del));  // truncate string
}

return list;