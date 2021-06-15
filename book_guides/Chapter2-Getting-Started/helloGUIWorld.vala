// RUn with vala --pkg=gtk+-3.0 helloGUIWorld.vala
int main( string[] args ) {
	// Note that we are using the ref
	// keyword here; this indicates that the parameters are called by reference,
	// which allows the calling function to manipulate them.
	Gtk.init( ref args);

	var window = new Gtk.Window() {
		title = "Hello UI World",
		border_width = 10,
		window_position = Gtk.WindowPosition.CENTER
	};
	window.set_default_size(400, 150);
	// Note about connect methos in vala
	/*
		The method connect() is actually part of something bigger: The signal
		mechanism in Vala, which implements callbacks for loosely connected
		components. Not to be confused with UNIX signals, a Vala signal allows
		connecting application-specific events with one or more listeners:
	*/
	window.destroy.connect( Gtk.main_quit );

	var button = new Gtk.Button.with_label("Click Me");
	button.clicked.connect( () => {
		button.label = "Thank you";
	});

	window.add(button);
	/*
		By default, newly added UI elements are invisible by default. With the
		method show_all(), you can ensure that the newly added button will be
		visible:
	*/
	window.show_all();

	Gtk.main();
	return 0;
}