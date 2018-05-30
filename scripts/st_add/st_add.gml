/// Adds a key/value pair to the ST

/// @param st
/// @param key
/// @param val

var st = argument0;

var node = instance_create_depth(0, 0, depth, objNode);
node.key = argument1;
node.value = argument2;

// resize if st is too small
if (st_getSize(st) > 3 * st_getCap(st) / 4)
	st_scale(st, 2.0);

var arr = st_getArray(st);

// add in separate chaining fashion
var hash = st_hash(st, node.key)
var currentNode = arr[hash];

// replace existing key if possible
while (currentNode != noone) {
	if (currentNode.key == node.key) {
		currentNode.value = node.value;
		instance_destroy(node, false);
		return;
	} else {
		currentNode = currentNode.next;
	}
}
	
// if key didn't exist, just put at front of list
node.next = arr[hash];
arr[@ hash] = node;
st.size++;