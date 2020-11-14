public class MyApp.Window : Gtk.ApplicationWindow {
  public Window (Application app) {
    Object (
      application : app
    );
  }

  construct {
    // Define the properties of the window widget
    title = "Slinqer App";
    border_width = 10;
    window_position = Gtk.WindowPosition.CENTER;
    set_default_size (350, 350);

    // Fetch the store values schema in the glib library
    var settings = new GLib.Settings ("com.github.andirsun.myapp");
    //restore the last position of the window
    move (settings.get_int("pos-x"), settings.get_int("pos-y"));
    show_all ();
  }
}