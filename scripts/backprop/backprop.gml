/// @description Backpropagates the error one layer and returns dl vec

/// @param nnid - net instance id
/// @param error - vector of dl error in layer above
/// @param layernum - int representing the layer being computed for

var nn = argument0;
var error = argument1;
var layernum = argument2;

var z = nn.zs[layernum];
var w2 = nn.weights[layernum + 1];

var sPrime = applyToArray(z, nn.activationsPrime[layernum]);

// (W[l+1] dot error[l+1]) Hadamard product sl'(zl)
var z1Error = newArray(array_length_1d(z), 0);
for (var i = 0; i < array_length_2d(w2, 0); i++) {  // w[l+1] transpose
	for (var j = 0; j < array_height_2d(w2); j++) {
		z1Error[i] += w2[j, i] * error[j];
	}
	z1Error[i] *= sPrime[i];
}

return z1Error;