///@description Function converts string to base64 then replaces
///		unsafe characters using % encodings

/// @param str - input string

var str = argument0;

str = base64_encode(str);
str = string_replace_all(str, "+", "-");
str = string_replace_all(str, "/", "_");
str = string_replace_all(str, "=", "%3D");

return str;