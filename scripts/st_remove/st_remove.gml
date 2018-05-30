/// Removes selected key value pair from symbol table

/// @param st
/// @param key

var st = argument0;
var key = argument1;
var arr = st_getArray(st);
var hash = st_hash(st, key);

var node = arr[hash];
if (node != noone and node.key == key) {
	arr[@ hash] = node.next;
	var temp = node.value;
	instance_destroy(node, false);
	st.size--;
	return temp;
} else if (node != noone) {
	var prevNode = node;
	node = node.next;
	while (node != noone) {
		if (node.key == key) {
			var temp = node.value;
			prevNode.next = node.next;
			instance_destroy(node, false);
			st.size--;
			return temp;
		}
		prevNode = node;
		node = node.next;
	}
}
return noone;