/// Scales the size of the symbol table

/// @param st
/// @param scale

var st = argument0;
var arr = st_getArray(st);
var cap = st_getCap(st);

// make scaled table and set ST object to point to it
var newCap = ceil(cap * argument1);
var newArr = array_create(newCap, noone);
st.arr = newArr;
st.capacity = newCap;
st.size = 0;

for (var i = 0; i < cap; i++)
{
	var node = arr[i];
	while (node != noone) {
		st_add(st, node.key, node.value);
		var temp = node;
		node = node.next;
		instance_destroy(temp, false);
	}
}