/// @description Populates weights and biases in NN from string representation

/// @param txtFile

var txt = file_text_read_string(argument0);

var nn = createUtil(objNeuralNet);

nn.eta = 0.01;

// figure out nodes at each layer
var index = 0;
var m = 0;
var n = 0;

for (var i = 1; i <= string_length(txt); i++) {  // 1 indexed strings
	var c = string_char_at(txt, i);
	if (c == "{") {
	}
	if (c == "[") {
	}
	if (c == "]") {
	}
	if (c == "}") {
		m = 0;
		n = 0;
	}
}

X = -1;           // cached input vector
weights = -1;     // array of weights between layers 
biases = -1;      // array of biases between layers
activations = -1; // activation functions at each layer
activationsPrime = -1; // prime of activation functions at each layer
zs = -1;          // array of X dot W vector
alphas = -1;      // sigma(Z + B) vector
yhat = -1;        // cached output vector