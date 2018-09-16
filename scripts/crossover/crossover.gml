/// @description Mixes weights and biases from the two neural nets 
///   The first NN will be modified in place, and the second NN
///   will be unaffected.  NNs must have same architecture

/// @param nn
/// @param nn2

var nn = argument0;
var nn2 = argument1;

// go through the layers
var numLayers = array_length_1d(nn.weights);
for (var i = 0; i < numLayers; i++) {
	
	// cross weights
	var w = nn.weights[i];
	var w2 = nn2.weights[i];
	for (var j = 0; j < array_height_2d(w); j++) {
		for (var k = 0; k < array_length_2d(w, 0); k++) {
			if (random(1.0) < 0.5) {
				w[@ j, k] = w2[j, k];
			}
		}
	}
	
	// cross biases
	var b = nn.biases[i];
	var b2 = nn2.biases[i];
	for (var j = 0; j < array_length_1d(b); j++) {
		if (random(1.0) < 0.5) {
			b[@ j] = b2[j];
		}
	}
}