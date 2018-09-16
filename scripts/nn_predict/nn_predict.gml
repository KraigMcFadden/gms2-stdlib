///@description Predicts output of neural net based on given inputs

/// @param id - of neural net to use
/// @param inArr - array of inputs

var nn = argument0;
var inputs = argument1;

// safety check
if (nn.object_index != objNeuralNet 
		or !is_array(inputs))
	return;

array_copy(nn.X, 0, inputs, 0, array_length_1d(inputs));

// feedforward through the network to output layer
for (var i = 0; i < array_length_1d(nn.weights); i++) {
	
	var in;
	if (i == 0) { in = nn.X; }
	else        { in = nn.alphas[i - 1]; }
	
	nn.zs[i] = applyWeights(nn.weights[i], in);
	nn.zs[i] = applyBias(nn.zs[i], nn.biases[i]);
	nn.alphas[i] = applyToArray(nn.zs[i], nn.activations[i]);
}

var returnArray = newArray(array_length_1d(nn.yhat), 0);
array_copy(nn.yhat, 0, nn.alphas[array_length_1d(nn.alphas) - 1],
	0, array_length_1d(nn.yhat));
array_copy(returnArray, 0, nn.alphas[array_length_1d(nn.alphas) - 1],
	0, array_length_1d(returnArray));
return returnArray;