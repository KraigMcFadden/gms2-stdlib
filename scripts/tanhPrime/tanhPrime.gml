///@description Derivative of tanh activation function

/// @param val

//var val = tanh(argument0);
//return 1.0 - (val * val);

var val = (exp(-argument0) + exp(argument0));
return 4.0 / (val * val);