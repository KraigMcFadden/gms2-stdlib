/// @description Duplicates existing NN

/// @param nn

var nn = argument0;

if (!instance_exists(nn) or nn.object_index != objNeuralNet)
	return;

var newNn = createUtil(objNeuralNet);
newNn.eta = nn.eta;

newNn.X = array_create(array_length_1d(nn.X), 0);
array_copy(newNn.X, 0, nn.X, 0, array_length_1d(nn.X));

newNn.weights = array_create(array_length_1d(nn.weights), 0);
for (var i = 0; i < array_length_1d(nn.weights); i++) {
	var w = nn.weights[i];
	var newW = new2DArray(array_height_2d(w), array_length_2d(w, 0), 0);
	for (var j = 0; j < array_height_2d(w); j++) {
		for (var k = 0; k < array_length_2d(w, 0); k++) {
			newW[j, k] = w[j, k];
		}
	}
	newNn.weights[i] = newW;
}

newNn.biases = array_create(array_length_1d(nn.biases), 0);
for (var i = 0; i < array_length_1d(nn.biases); i++) {
	var b = nn.biases[i];
	var newB = array_create(array_length_1d(b), 0);
	array_copy(newB, 0, b, 0, array_length_1d(b));
	newNn.biases[i] = newB;
}

newNn.activations = array_create(array_length_1d(nn.activations), 0);
array_copy(newNn.activations, 0, nn.activations, 0, array_length_1d(nn.activations));

newNn.activationsPrime = array_create(array_length_1d(nn.activationsPrime), 0);
array_copy(newNn.activationsPrime, 0, nn.activationsPrime, 
	0, array_length_1d(nn.activationsPrime));

newNn.zs = array_create(array_length_1d(nn.zs), 0);
for (var i = 0; i < array_length_1d(nn.zs); i++) {
	var z = nn.zs[i];
	var newZ = array_create(array_length_1d(z), 0);
	array_copy(newZ, 0, z, 0, array_length_1d(z));
	newNn.zs[i] = newZ;
}

newNn.alphas = array_create(array_length_1d(nn.alphas), 0);
for (var i = 0; i < array_length_1d(nn.alphas); i++) {
	var a = nn.alphas[i];
	var newA = array_create(array_length_1d(a), 0);
	array_copy(newA, 0, a, 0, array_length_1d(a));
	newNn.alphas[i] = newA;
}

newNn.yhat = array_create(array_length_1d(nn.yhat), 0);
array_copy(newNn.yhat, 0, nn.yhat, 0, array_length_1d(nn.yhat));

return newNn;