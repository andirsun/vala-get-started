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
# Run
```
<!-- Normal Method -->
./test
```
```
cd build/
ninja
./src/com.github.andirsun.myapp
```