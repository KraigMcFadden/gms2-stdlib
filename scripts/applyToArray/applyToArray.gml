/// @description Applies a given function to an array and returns
/// new array with the results

/// @param arr - array to be applied to 
/// @param fxn - function to apply

var arr = argument0;
var fxn = argument1;

var len = array_length_1d(arr);
var newArr = array_create(len, 0);
for (var i = 0; i < len; i++) {
	newArr[i] = script_execute(fxn, arr[i]);
}

return newArr;