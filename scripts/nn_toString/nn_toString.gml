/// @description Represents NN as a string of weights and biases

/// @param nn

var nn = argument0;
if (! instance_exists(nn))
	return "";
	
var outString = "";
for (var i = 0; i < array_length_1d(nn.weights); i++) {
	var w = nn.weights[i];
	var b = nn.biases[i];
	
	// write weights in {[...],[...]...}\n notation
	outString += "{";
	for (var j = 0; j < array_height_2d(w); j++) {
		outString += "[";
		for (var k = 0; k < array_length_2d(w, 0); k++) {
			var numPlaces = string_length(string(w[j, k])) - 3;
			outString += string_format(w[j, k], max(numPlaces, 0), 15);
			if (k != array_length_2d(w, 0) - 1) { outString += ","; }
		}
		outString += "]";
		if (j != array_height_2d(w) - 1) { outString += ","; }
	}
	outString += "}\n";
	
	// write biases in (...,...)\n notation
	outString += "(";
	for (var j = 0; j < array_length_1d(b); j++) {
		var numPlaces = string_length(string(b[j])) - 3;
		outString += string_format(b[j], max(numPlaces, 0), 15);
		if (j != array_length_1d(b) - 1) { outString += ","; }
	}
	outString += ")"
	if (i != array_length_1d(nn.weights) - 1) { outString += "\n"; }
}

return outString;