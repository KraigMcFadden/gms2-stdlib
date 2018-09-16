/// @description Multiplies weight matrix by value vector

/// @param arr2D
/// @param arr1D

var arr2D = argument0;
var arr1D = argument1;
var m = array_height_2d(arr2D);
var n = array_length_2d(arr2D, 0);
var newArr = newArray(m, 0);

for (var i = 0; i < m; i++) {
	for (var j = 0; j < n; j++) {
		newArr[i] += arr2D[i, j] * arr1D[j];
	}
}

return newArr;