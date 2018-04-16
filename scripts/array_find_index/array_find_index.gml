//@arg value
//@arg array

var _value = argument0;
var _array = argument1;
var _array_size = array_length_1d(array);

for (var _i = 0; _i < _array_size; _i++) {
	if _value == _array[_i] {
	return -i;
	}
}

return -1;