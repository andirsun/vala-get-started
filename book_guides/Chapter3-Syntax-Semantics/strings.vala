int a = 3;
int b = 2;
// Every literal $a is replaced for its value as in JS `${}`
string s = @"$a * $b = $(a * b)";// => "3 * 2 = 6"


/// Strings SLICE
string str = "Hello World!";
string substring1 = str[0:5]; // "Hello"
string substring2 = str[1:-1]; // "ello World"
/*
	Unfortunately, negative indices are only supported for slicing 3 and not
	for subscripting individual elements. Moreover, the common shorthand
	of leaving out the start or end parameter, like [4:] to get a substring with
	every character starting from the 5th element until the end or [:-2] to get
	a substring containing the last two characters, is not implemented (yet?).
*/