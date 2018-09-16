///@description Creates and returns a new neural net with given params

/// @param numNodes - array of number of nodes in each layer
/// @param activations - array of activations at each layer
/// @param activationsPrime - array of derivative of each activation
/// @param eta - initial learning rate
/// @param min value in range
/// @param max value in range

var nodes = argument0;
var numLayers = array_length_1d(nodes);
var activations = argument1;
var activationsPrime = argument2;

// initialize net and layers
var nn = instance_create_layer(0, 0, 
	Constants.gameLayers[instLayers.UTIL], objNeuralNet);
nn.eta = argument3;
nn.X = newArray(nodes[0], 0);
nn.activations = array_create(array_length_1d(activations), 0);
array_copy(nn.activations, 0, activations, 0, array_length_1d(activations));
nn.activationsPrime = array_create(array_length_1d(activationsPrime), 0);
array_copy(nn.activationsPrime, 0, activationsPrime, 0, array_length_1d(activationsPrime));
nn.yhat = newArray(nodes[numLayers - 1], 0);

nn.weights = newArray(numLayers - 1, 0);  // to be populated in loop
nn.biases = newArray(numLayers - 1, 0);
nn.zs = newArray(numLayers - 1, 0);
nn.alphas = newArray(numLayers - 1, 0);

for (var i = 0; i < numLayers - 1; i++) {
	// rows is elements in current layer, columns is elements in
	// layer that is one closer to input
	nn.weights[i] = new2DArray(nodes[i + 1], nodes[i], 0);
	nn.biases[i] = newArray(nodes[i + 1], 0);
	nn.zs[i] = newArray(nodes[i + 1], 0);
	nn.alphas[i] = newArray(nodes[i + 1], 0);

	// randomize hidden and output weights and biases
	var w = nn.weights[i];
	var b = nn.biases[i];
	for (var j = 0; j < nodes[i + 1]; j++) {
		for (var k = 0; k < nodes[i]; k++) {
			w[@ j, k] = random_range(argument4, argument5);
		}
		b[@ j] = random_range(argument4, argument5);
	}
}

return nn;