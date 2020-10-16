public class Test : Gtk.Application {
  
  public Test (){
    Object (
      application_id : "com.github.andirsun.test",
      flags: ApplicationFlags.FLAGS_NONE
    );
  }
  
  protected override void activate () {
    this.build_window ();
  }

  private void build_window () {
    var window = new Gtk.ApplicationWindow (this) {
      title = "Hello",
      border_width = 10,
      window_position = Gtk.WindowPosition.CENTER
    };
    window.set_default_size (350, 80);
    window.show_all ();
  }

  public static int main (string[] args) {
    var test = new Test ();
    return test.run (args);
  }
}
//  int main(string[] args ) {
//    Gtk.init (ref args);
  
//    var window = new Gtk.Window ();
//    window.title = "Hello";
//    window.border_width = 10;
//    window.window_position = Gtk.WindowPosition.CENTER;
//    window.set_default_size (350, 80);
  
//    window.destroy.connect (Gtk.main_quit);

//    window.show_all ();

//    Gtk.main ();

//    return 0;
//  }