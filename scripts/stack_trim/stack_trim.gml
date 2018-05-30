/// @description Removes values from the tail of the stack until
///	    it is the given size.  Returns values in case they need to be freed

/// @param id - stack id
/// @param size

var stack = argument0;
var size = argument1;

var values = [];
if (size > stack.size)
	values = array_create(stack.size - size);

var i = 0;
while (stack.size > size) {
	var tail = stack.tail;
	values[i] = tail.value;
	stack.tail = stack.tail.prev;
	if (stack.tail != noone) {
		stack.tail.next = noone;
	}
	instance_destroy(tail);
	stack.size--;
	i++;
}

return values;