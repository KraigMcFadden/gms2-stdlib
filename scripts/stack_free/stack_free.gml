///@description Frees memory associated with stack

/// @param stack

var stack = argument0;
if (! instance_exists(stack))
	return;

for (var i = stack.root; instance_exists(i);) {
	var temp = i;
	i = i.next;
	instance_destroy(i);
}

instance_destroy(stack);