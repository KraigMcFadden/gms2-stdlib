///@description Frees memory associated with stack

/// @param stack

var stack = argument0;
if (! instance_exists(stack))
	return;

// free nodes in stack (make sure the values have already been freed if necessary)
for (var i = stack.root; instance_exists(i);) {
	var temp = i;
	i = i.next;
	instance_destroy(i);
}

// free stack object
instance_destroy(stack);