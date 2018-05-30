/// @description Pushes item onto stack

/// @param id - id of stack
/// @param item - item to push onto stack

var stack = argument0;
var item = argument1;

var node = createUtil(objNode);
node.value = item;
node.next = stack.root;
stack.root = node;

if (stack.size == 0) {
	stack.tail = stack.root;
} else {
	stack.root.next.prev = stack.root;
}

stack.size++;