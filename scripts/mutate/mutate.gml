/// @description Mutates weights and biases in the neural net underlying the CN

/// @param cn

var cn = argument0;

if (! cn.isTraining)
	return;

// go through the layers
var numLayers = array_length_1d(cn.nn.weights);
for (var i = 0; i < numLayers; i++) {
	
	// mutate weights
	var w = cn.nn.weights[i];
	for (var j = 0; j < array_height_2d(w); j++) {
		for (var k = 0; k < array_length_2d(w, 0); k++) {
			if (random(1.0) <= cn.mutationProb) {
				w[@ j, k] = random_range(-1, 1);
			}
		}
	}
	
	// mutate biases
	var b = cn.nn.biases[i];
	for (var j = 0; j < array_length_1d(b); j++) {
		if (random(1.0) <= cn.mutationProb) {
			b[@ j] = random_range(-1, 1);
		}
	}
}