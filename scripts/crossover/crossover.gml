/// @description Mixes weights and biases from the neural nets underlying the
///   two CNs.  The first CN will be modified in place, and the second CN
///   will be unaffected.  CNs must have same neural network architecture

/// @param cn
/// @param cn2

var cn = argument0;
var cn2 = argument1;

if (! cn.isTraining)
	return;

// go through the layers
var numLayers = array_length_1d(cn.nn.weights);
for (var i = 0; i < numLayers; i++) {
	
	// cross weights
	var w = cn.nn.weights[i];
	var w2 = cn2.nn.weights[i];
	for (var j = 0; j < array_height_2d(w); j++) {
		for (var k = 0; k < array_length_2d(w, 0); k++) {
			if (random(1.0) < 0.5) {
				w[@ j, k] = w2[j, k];
			}
		}
	}
	
	// cross biases
	var b = cn.nn.biases[i];
	var b2 = cn2.nn.biases[i];
	for (var j = 0; j < array_length_1d(b); j++) {
		if (random(1.0) < 0.5) {
			b[@ j] = b2[j];
		}
	}
}