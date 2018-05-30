/// @description Writes string to text file

/// @param filepath
/// @param string
/// @param append
/// @param needsGet - does get_save_filename() need to be called?

var file = argument0;
var data = argument1;
var append = argument2;
var needsGet = argument3;

if (needsGet) {
	file = get_save_filename("text file|*.txt", file);
}
if (file != "") {
	var f;
	if (append)
		f = file_text_open_append(file);
	else
		f = file_text_open_write(file);
	file_text_write_string(f, data);
	file_text_close(f);
}
