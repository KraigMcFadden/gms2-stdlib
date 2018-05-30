/// Return an array of the values in the symbol table

/// @param st

var st = argument0;
var arr = st_getArray(st);

var values = array_create(st_getSize(st), 0);
var index = 0;

// search in separate chaining fashion
for (var i = 0; i < array_length_1d(arr); i++) {
	if (arr[i] == noone) {
		continue;
	} else {
		var currentNode = arr[i];
		while (currentNode != noone) {
			values[index] = currentNode.value;
			index++;
			currentNode = currentNode.next;
		}
	}
}

return values;