public class MyApp.HeaderBar : Gtk.HeaderBar {
  // Documentation for headerbar https://valadoc.org/gtk+-3.0/Gtk.HeaderBar.html
  construct {
    // Set the title set_title ("Slinqer test app");
    title = "Slinqer test app";
    // Set Subtitle
    subtitle = "Holi test";
    
    // Show headerbar buttons
    show_close_button = true;

  }
}