/// Takes an array of values (either 0 and 1 or etc and noone)
/// and converts it from beginning to end to decimal

// argument0 - the array

var arr = argument0;
var len = array_length_1d(arr);
var decimal = 0;
for (var i = 0; i < len; i++) {
	var val = 0;
	if (arr[i] == 1 or arr[i] != noone)
		val = 1;
	else if (arr[i] == 0 or arr[i] == noone)
		val = 0;
	decimal += power(2, i) * val;
}
return decimal;