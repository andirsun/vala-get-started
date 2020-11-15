public class MyApp.HeaderBar : Gtk.HeaderBar {
  // Documentation for headerbar https://valadoc.org/gtk+-3.0/Gtk.HeaderBar.html
  construct {
    // Set the title set_title ("Slinqer test app");
    //  title = "Slinqer test app";
    //  subtitle = "Holi test";
    // Show headerbar buttons
    show_close_button = true;

    var addButton = new Gtk.Button.with_label ("Add");
    // get the css styling of elementary guidelines
    addButton.get_style_context ().add_class ("suggested-action");
    // Add vertical align 
    addButton.valign = Gtk.Align.CENTER;
    // put the button in the start of header
    pack_start (addButton);

    // Stack Buttons section
    var stackSwitcher = new Gtk.StackSwitcher ();
    var stack = new Gtk.Stack ();
    stackSwitcher.stack = stack;
    
    var outstanding = new Gtk.Grid ();
    outstanding.add (new Gtk.Label ("Outstanding Page"));
    var completed = new Gtk.Grid ();
    completed.add (new Gtk.Label ("Completed Page"));
    
    stack.add_titled (outstanding, "outstanding", "Outstanding");
    stack.add_titled (completed, "completed", "Completed");
    
    set_custom_title (stackSwitcher);
    
    // End button
    var menuButton = new Gtk.Button.from_icon_name ("open-menu", Gtk.IconSize.LARGE_TOOLBAR );
    menuButton.valign = Gtk.Align.CENTER;
    pack_end(menuButton);
    


  }
}