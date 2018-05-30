/// Determines if a value is within some range.  Returns -1 if less
/// than range, 1 if greater than range, or 0 if within range

/// @param value
/// @param min
/// @param max
/// @param isInclusive

if (argument3) {
	if (argument0 < argument1) { return -1; }
	if (argument0 > argument2) { return 1; }
	return 0;
} else {
	if (argument0 <= argument1) { return -1; }
	if (argument0 >= argument2) { return 1; }
	return 0;
}