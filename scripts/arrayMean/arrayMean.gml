/// @description Return the mean of the numerical values in an array

/// @param array
/// @param start
/// @param end

var a = argument[0];
var start, stop;
if (argument_count > 1) {
	start = argument[1];
	stop = argument[2];  // the exact ending index
} else {
	start = 0;
	stop = array_length_1d(a) - 1;
}

var sum = 0;
for (var i = 0; i <= stop; i++) {
	sum += a[i];
}

return sum / (stop + 1);