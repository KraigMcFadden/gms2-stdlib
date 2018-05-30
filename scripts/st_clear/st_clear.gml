/// Clears a symbol table of all of it's key/value pairs

/// @param st

var st = argument0;
var arr = st_getArray(st);

// search in separate chaining fashion and free nodes
for (var i = 0; i < array_length_1d(arr); i++) {
	var currentNode = arr[i];
	while (currentNode != noone) {
		var temp = currentNode;
		currentNode = currentNode.next;
		instance_destroy(temp, false);
	}
	arr[@ i] = noone;
}

st.size = 0;