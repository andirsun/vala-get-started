# vala-get-started
# Required First time
```
sudo apt-get install build-essential libgtk-3-dev meson
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
## Gtk inspector debuggin tool
```
gsettings set org.gtk.Settings.Debug enable-inspector-keybinding true
ctrl + shift + i
```