# How to use

1. cpy template to a new dir
```cp -r template/ week1_tut/.```
2. run the command manually in load_module.sh, because for some reason running the shell script itself does not work
3. write a main.cu, might need to modify cmakelist to target ur desired execuable
4. make scripts executable
```
cd week1_tut
chmod +x ./config_cmake.sh
chmod +x ./build.sh
```

5. run them
```
# only need to run once
./config_cmake.sh
# build/rebuild
./build.sh
```
