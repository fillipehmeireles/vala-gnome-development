
public class MainWindow : Gtk.Window {
    private Gtk.Label label;
    private Gtk.Label label2;

    public MainWindow(){
        this.title = "Hello, Gnome App";
        this.window_position =  Gtk.WindowPosition.CENTER;
        this.destroy.connect (Gtk.main_quit);
        set_default_size (300, 20);

        label =  new Gtk.Label("Hi Gnome App");
        label2 =  new Gtk.Label("Hi Gnome App!");
        var hbox = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 5);
        hbox.homogeneous = true;
        hbox.add(label);
        hbox.add(label2);
        add(hbox);
    }
}

public static int main (string[] args) {
    Gtk.init (ref args);

    var window = new MainWindow ();
    window.show_all ();

    Gtk.main ();
    return 0;
}