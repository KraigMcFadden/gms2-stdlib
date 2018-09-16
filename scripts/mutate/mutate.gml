/// @description Mutates weights and biases in the neural net 

/// @param nn

var nn = argument0;


// go through the layers
var numLayers = array_length_1d(nn.weights);
for (var i = 0; i < numLayers; i++) {
	
	// mutate weights
	var w = nn.weights[i];
	for (var j = 0; j < array_height_2d(w); j++) {
		for (var k = 0; k < array_length_2d(w, 0); k++) {
			if (random(1.0) <= nn.mutationProb) {
				w[@ j, k] = random_range(-1, 1);
			}
		}
	}
	
	// mutate biases
	var b = nn.biases[i];
	for (var j = 0; j < array_length_1d(b); j++) {
		if (random(1.0) <= nn.mutationProb) {
			b[@ j] = random_range(-1, 1);
		}
	}
}