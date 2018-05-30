/// Scales the size of the symbol table

/// @param st
/// @param scale

var st = argument0;
var arr = _st_array(st);
var cap = st_cap(st);

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
		st_put(st, node.key, node.value);
		var temp = node;
		node = node.next;
		instance_destroy(temp, false);
	}
}