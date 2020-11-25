public class Application : Gtk.Application {

  public Application () {
    Object (
      application_id : "com.github.andirsun.myapp",
      flags: ApplicationFlags.FLAGS_NONE
    );
  }

  protected override void activate () {
    var window = new Window (this);
    add_window (window);
    //  var window = new MainWindow (this);
    //  window.show_all ();
  }

}
