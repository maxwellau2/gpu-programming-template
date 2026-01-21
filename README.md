# How to use

1. cpy template to a new dir
```cp -r template/ week1_tut/.```

2. write a main.cu, might need to modify cmakelist to target ur desired execuable

3. run them
``` bash
# only need to run once
make config-cmake
# build/rebuild
make build
# run
make run
# view output
make view-out
```

4. for local gpu, please have clang compiler
```bash
make local-config-cmake
make local-build
make local-run
```

## Caveats
This entire thing assumes ur target file is main.cu, if you wish to target a different file, or more files, please modify CMakeLists.txt as needed.
