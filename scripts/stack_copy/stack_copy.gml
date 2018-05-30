/// @description Returns a copy of a given stack 

/// @param stack

var stack = argument0;

var copy = stack_create();
if (! instance_exists(stack)) {
	copy.size = 0;
	return copy;
}
copy.size = stack.size;

var prevNode = noone;
for (var i = stack.root; instance_exists(i); i = i.next) {
	var node = instance_create_layer(0, 0, 
		Constants.gameLayers[instLayers.UTIL], objNode);
	node.key = i.key;
	node.value = i.value;
	
	if (instance_exists(prevNode))
		prevNode.next = node;
	node.prev = prevNode;
	prevNode = node;
	
	if (i == stack.root) {
		copy.root = node;
	} else if (i == stack.tail) {
		copy.tail = node;
	}
}

return copy;