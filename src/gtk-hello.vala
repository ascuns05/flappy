public class MyApp : Gtk.Application { 
    public MyApp() {
        Object (application_id: "com.github.ascuns05.flappy",
        flags: ApplicationFlags.FLAGS_NONE);
    }

    protected override void activate () {
        var app_window = new Gtk.ApplicationWindow (this);

        var grid = new Gtk.Grid ();
        grid.orientation = Gtk.Orientation.VERTICAL;
        grid.row_spacing = 12;

        var title_label = new Gtk.Label ("Notifications");
        var show_button = new Gtk.Button.with_label ("Show");

        grid.add (title_label);
        grid.add (show_button);
        
        app_window.add (grid);
        app_window.show_all ();

        show_button.clicked.connect (() => {
            var notification = new Notification ("Hello World");
            var image = new Gtk.Image.from_icon_name ("dialog-warning", Gtk.IconSize.DIALOG);
            notification.set_icon (image.gicon);
            notification.set_body ("This is my first notifications");
            this.send_notification ("notify.app", notivalafication);
        });

        app_window.show ();
    }

    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}