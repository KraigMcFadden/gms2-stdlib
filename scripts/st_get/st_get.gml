/// Gets the value that corresponds to a key.  Returns noone if the pair
/// doesn't yet exist

/// @param st
/// @param key

var st = argument0;
var key = argument1;
var arr = _st_array(st);

// search in separate chaining fashion
var hash = _st_hash(st, key)
var currentNode = arr[hash];
while (currentNode != noone) {
	if (currentNode.key == key) {
		return currentNode.value;
	} else {
		currentNode = currentNode.next;
	}
}
return noone;