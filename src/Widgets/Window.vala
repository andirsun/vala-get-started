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
    show_all ();
  }
}