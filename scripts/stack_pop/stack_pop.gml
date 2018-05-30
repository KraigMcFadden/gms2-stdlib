/// @description Pops item off of stack

/// @param id - id of stack

var stack = argument0;

// get node
var node = stack.root;
if (! instance_exists(node)) 
	return noone;

// shift stack
stack.root = stack.root.next;
if (instance_exists(stack.root))
	stack.root.prev = noone;

// free memory and return value
var toReturn = node.value;
instance_destroy(node);
stack.size--;
return toReturn;