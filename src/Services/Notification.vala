
/*
* Copyright © 2020 Alain M. (https://github.com/andirsun/vala-get-started)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 3 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Anderson Laverde. <ander.laverde.dev@gmail.com>
*/

  
public class Services.SendNotification : GLib.Object {
  
  private Gtk.ApplicationWindow app ;
  private string app_id = "com.github.andirsun.myapp";
  private Notification notification = new Notification (("Hola"));

  //private Notification start_notification = new Notification (app);

  public SendNotification (Gtk.ApplicationWindow? app) {
    this.app = app;
  }
  
  public void send () {
    notification.set_title ("Holi");
    notification.set_body ("Prueba 2");
    ///  notification.set_icon (new ThemedIcon (icon_name));
    //  notification.set_priority (priority);
    this.app.application.send_notification (app_id, notification);
    
    
  }
}

