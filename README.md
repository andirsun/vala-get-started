# vala-get-started
## Gtk inspector debuggin tool
```
gsettings set org.gtk.Settings.Debug enable-inspector-keybinding true
ctrl + shift + i
```
# Build 
```
<!-- Vala Method -->
valac --pkg gtk+-3.0 test.vala
```
```
<!-- Meson Method -->
```
meson build --prefix=/usr
# Run First time
```
cd build/
sudo ninja install
./src/com.github.andirsun.myapp
```
```
cd build/
ninja
./src/com.github.andirsun.myapp
```