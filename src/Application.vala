public class Application : Gtk.Application {
  
  

  
  public Application (){
    Object (
      application_id : "com.github.andirsun.myapp",
      flags: ApplicationFlags.FLAGS_NONE
    );
  }
  
  protected override void activate () {
    var window = new MyApp.Window (this);
    this.sendNotification ();
    
    add_window (window);
  }
  
  public void sendNotification () {
    var icon = new GLib.ThemedIcon ("bluetooth");
    var notification = new Notification (("REDMI AIRDOTS"));
    notification.set_icon (icon);
    notification.set_body (("Nearby"));
    // add button are not implemented yet on elementary os
    //notification.add_button ("Connect","na");
    notification.set_priority (NotificationPriority.NORMAL);
    send_notification ("com.github.andirsun.myapp", notification);

  }

}