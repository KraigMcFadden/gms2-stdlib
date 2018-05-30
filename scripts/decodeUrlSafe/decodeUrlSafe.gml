///@description Function converts URL safe string back to normal

/// @param str - URL safe input string

var str = argument0;

str = string_replace_all(str, "-", "+");
str = string_replace_all(str, "_", "/");
str = string_replace_all(str, "%3D", "=");
str = base64_decode(str);

return str;