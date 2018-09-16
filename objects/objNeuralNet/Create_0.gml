/// @description Create input layer, hidden layer, and output layer for
/// a reinforcement learning net.  Initialize via nn_create()

eta = 0;
mutationProb = 0;

X = [];           // cached input vector
weights = [];     // array of weights between layers 
biases = [];      // array of biases between layers
activations = []; // activation functions at each layer
activationsPrime = []; // prime of activation functions at each layer
zs = [];          // array of X dot W vector
alphas = [];      // sigma(Z + B) vector
yhat = [];        // cached output vector

debug = false;
screenOffset = 0;