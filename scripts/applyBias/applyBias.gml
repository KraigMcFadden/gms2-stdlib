/// @description Adds bias vector to input vector

/// @param z vector
/// @param bias vector

var z = argument0;
var bias = argument1;
var n = array_length_1d(z);
var newArr = newArray(n, 0);

for (var i = 0; i < n; i++) {
	newArr[i] = z[i] + bias[i];
}

return newArr;