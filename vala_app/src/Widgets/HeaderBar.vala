public class MyApp.HeaderBar : Gtk.HeaderBar {
  // Documentation for headerbar https://valadoc.org/gtk+-3.0/Gtk.HeaderBar.html
  public Window main_window { get; construct; }

  public HeaderBar (Window window) {
    // the window parameter has a stack inside
    Object (
      main_window : window
    );
  }

  construct {
    // Set the title set_title ("Slinqer test app");
    //  title = "Slinqer test app";
    //  subtitle = "Holi test";
    // Show headerbar buttons
    show_close_button = true;

    var add_button = new Gtk.Button.with_label ("Add");
    // get the css styling of elementary guidelines
    add_button.get_style_context ().add_class ("suggested-action");
    // Add vertical align 
    add_button.valign = Gtk.Align.CENTER;
    // put the button in the start of header
    pack_start (add_button);


    // Handle click event to present dialog
    add_button.clicked.connect (this.open_dialog);
    // Stack Buttons section
    var stack_switcher = new Gtk.StackSwitcher ();
    // add the stack recieved in the constructor as custom stack
    stack_switcher.stack = main_window.stack;

    set_custom_title (stack_switcher);

    // End button
    var menu_button = new Gtk.Button.from_icon_name ("open-menu", Gtk.IconSize.LARGE_TOOLBAR );
    menu_button.valign = Gtk.Align.CENTER;
    pack_end (menu_button);
  }

  public void open_dialog () {
    //Dialog
    var dialog = new Gtk.Dialog.with_buttons (
      "Add new note",
      main_window,
      Gtk.DialogFlags.DESTROY_WITH_PARENT |
      Gtk.DialogFlags.MODAL, //|
      //Gtk.DialogFlags.USE_HEADER_BAR
      "First Button", 1,
      "Second Button", 2, null
    );

    var label = new Gtk.Label ("Dialog content test");
    var content_area = dialog.get_content_area ();
    content_area.add (label);

    dialog.show_all ();
    dialog.present ();
  }
}
