# How to use

1. cpy template to a new dir
```cp -r template/ week1_tut/.```
2. run the command manually in load_module.sh, because for some reason running the shell script itself does not work
``` bash
module load craype-accel-nvidia80
```

3. write a main.cu, might need to modify cmakelist to target ur desired execuable

4. run them
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
