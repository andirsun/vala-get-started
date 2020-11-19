public class Widgets.HeaderBar : Gtk.HeaderBar {
  // Documentation for headerbar https://valadoc.org/gtk+-3.0/Gtk.HeaderBar.html
  public MyApp.Window main_window { get; construct; }
  public Gtk.ApplicationWindow app_window ;
  private Services.SendNotification send_notification;
  
  public HeaderBar (MyApp.Window window, Gtk.ApplicationWindow app) {
    // the window parameter has a stack inside
    Object (
      main_window : window
    );
    
    this.app_window = app;

  }
  
  construct {
    send_notification = new Services.SendNotification (this.app_window);
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

    
    // Handle click event to present dialog
    //addButton.clicked.connect (this.open_dialog);
    addButton.clicked.connect (this.sendNotification);
    
    // Stack Buttons section
    var stackSwitcher = new Gtk.StackSwitcher ();
    // add the stack recieved in the constructor as custom stack
    stackSwitcher.stack = main_window.stack;
    
    
    
    set_custom_title (stackSwitcher);
    
    // End button
    var menuButton = new Gtk.Button.from_icon_name ("open-menu", Gtk.IconSize.LARGE_TOOLBAR );
    menuButton.valign = Gtk.Align.CENTER;
    pack_end(menuButton);
  
  }
  public void sendNotification () {
    this.send_notification.send ();
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

    var label = new Gtk.Label("Dialog content test");
    var contentArea = dialog.get_content_area ();
    contentArea.add (label);

    dialog.show_all ();
    dialog.present ();
  }
}