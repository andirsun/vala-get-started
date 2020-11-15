public class MyApp.Window : Gtk.ApplicationWindow {
  public GLib.Settings settings;
  
  public Window (Application app) {
    Object (
      application : app
    );
  }

  construct {

    border_width = 10;
    window_position = Gtk.WindowPosition.CENTER;
    set_default_size (350, 350);

    // Fetch the store values schema in the glib library
    settings = new GLib.Settings ("com.github.andirsun.myapp");
    //restore the last position of the window
    move (settings.get_int("pos-x"), settings.get_int("pos-y"));
    resize (settings.get_int("window-width"), settings.get_int("window-height"));

    //trigger this event when the app is closed
    delete_event.connect (e => {
      return before_destroy ();
    });
    
    // My own custom headerbar widget
    var headerbar = new MyApp.HeaderBar ();
    set_titlebar (headerbar);


    show_all ();
  }

  public bool before_destroy () {
    // If this function return true, then the window will not destroy. If return false then destroy
    int width, height, x, y;

    // Get window size and position and assign to variables
    get_size (out width, out height);
    get_position (out x, out y);

    //Update GLib setting values
    settings.set_int("pos-x", x);
    settings.set_int("pos-y", y);
    settings.set_int("window-width", width);
    settings.set_int("window-height", height);
    
    return false;
  }
}