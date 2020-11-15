# vala-get-started

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