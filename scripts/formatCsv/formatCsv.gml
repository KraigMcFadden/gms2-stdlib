/// @description Converts array to comma-separated value string

/// @param array

var arr = argument0;

var len = array_length_1d(arr);
var str = "";
for (var i = 0; i < len; i++) {
	if (i < len - 1) {
		str += string(arr[i]) + ",";
	} else {
		str += string(arr[i]);
	}
}

return str;