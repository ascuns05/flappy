int main(string[] args) {
    Gtk.init(ref args);

    var window = new Gtk.Window();
    window.title = "Привет мир!";
    window.set_border_width(12);
    window.set_position(Gtk.WindowPosition.CENTER);
    window.set_default_size(350,70);
    window.destroy.connect(Gtk.main_quit);

    var button_hello = new Gtk.Button.with_label("Нажми на меня!");
    button_hello.clicked.connect(() => {
        button_hello.label = "Привет мир!";
        button_hello.set_sensitive(false);
    });

    window.add(button_hello);
    window.show_all();

    Gtk.main();
    return 0;

}