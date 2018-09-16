/// @description Slowly cause the net to learn based on 
/// 'rewards' or 'punishments' to its predictions

/// @param nnid - id of the net in question
/// @param y - the output label vector

var nn = argument0;
var label = argument1;

var numLayers = array_length_1d(nn.alphas) + 1;
var outLayer = nn.alphas[numLayers - 2];
var outLen = array_length_1d(outLayer);

// compute gradient of the cost function (L2 loss)
var gradC = newArray(outLen, 0);
for (var i = 0; i < outLen; i++) {
	gradC[i] = outLayer[i] - label[i];
}

// compute a^L
var sPrime = applyToArray(nn.zs[numLayers - 2],
	nn.activationsPrime[numLayers - 2]);

// Hadamard product to get the error vector dL
var deltal = newArray(outLen, 0);
for (var i = 0; i < outLen; i++) {
	deltal[i] = gradC[i] * sPrime[i];
}

var numWeights = numLayers - 1;
for (var i = 0; i < numWeights; i++) {  // go through layers
	
	// fetch layer that is one layer closer to input than this one
	var prevLayer;
	if (numWeights - i - 2 < 0)
		prevLayer = nn.X;
	else
		prevLayer = nn.alphas[numWeights - i - 2];
	
	// update weights in this layer
	var w = nn.weights[numWeights - i - 1]
	for (var j = 0; j < array_height_2d(w); j++) {  // elements in this layer
		for (var k = 0; k < array_length_2d(w, 0); k++) { // elements in prevLayer
			w[@ j, k] -= nn.eta * (deltal[j] * prevLayer[k]);
		}
		var bias = nn.biases[numWeights - i - 1];
		bias[@ j] -= nn.eta * deltal[j];
	}

	// backpropagate the error to get the previous error vector dl
	if (numWeights - i - 2 >= 0)
		var deltal = backprop(nn, deltal, numWeights - i - 2);
}