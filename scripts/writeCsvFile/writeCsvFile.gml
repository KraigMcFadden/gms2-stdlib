/// @description Writes array to csv file

/// @param filepath
/// @param array
/// @param append
/// @param needsGet - does get_save_filename() need to be called?

var file = argument0;
var arr = argument1;
var append = argument2;
var needsGet = argument3;

var str = formatCsv(arr);

writeTxtFile(file, str, append, needsGet);