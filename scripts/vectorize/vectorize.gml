/// @description Flattens a 2D array into a 1D array - returns array unchanged
///    if it's 1d to begin with

/// @param array

var arr = argument0;

var rows = array_height_2d(arr);
var cols = array_length_2d(arr, 0);

var newArr = array_create(rows * cols, 0);
for (var i = 0; i < rows; i++) {
	for (var j = 0; j < cols; j++) {
		newArr[(i * cols) + j] = arr[i, j];
	}
}

return newArr;