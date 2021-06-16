enum EdgeType {
	LEFT,
	RIGHT,
	TOP,
	BOTTOM
}

enum HttpStatusCode {
	OK = 200,
	NOT_FOUND = 404
}
/*
	In addition, Vala supports flag type enumerations, where the individual
	members are mapped to powers of 2. This way, a flag member only requires
	one bit of storage. Moreover, you can easily apply bitwise operators to test
	and combine flag type enumerations. To define a flag type enumeration, you
	annotate the enumeration with the [Flags] code attribute:
*/
[Flags]
enum Borders {
	LEFT,
	RIGTH,
	TOP,
	BOTTOM
}
/*
As a convenient way of bit testing, flag type enumerators also support
the in operator:
1   void drawBorders( Borders selectedBorders )
2   {
3       if ( selectedBorders & Borders.LEFT == Borders.LEFT )
4       {
5           // draw left border
6       }
7       if ( Borders.RIGHT in selectedBorders )
8       {
9           // draw right border
10       }
11       // ...
12   }
*/

var x = Borders.LEFT;
stdout.printf( @"x = $x"); // "x = BORDERS_LEFT"
