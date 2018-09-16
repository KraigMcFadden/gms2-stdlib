/// @description Computes sigmoid prime for each element of vec

/// @param val

var val = argument0;
var expVal = exp(-val);
return 1.0 / (1.0 + expVal) * (1.0 - (1.0 / (1.0 + expVal)));