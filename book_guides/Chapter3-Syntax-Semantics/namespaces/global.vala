const int a = 24;

namespace A {
	const int a = 42;
	const int b = a; // 42
	// Get the reference of root namespace (global file)
	const int c = global :: a; // 24
}