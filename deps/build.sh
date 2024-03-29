#!/bin/sh
cd deps
cd cglm && cmake . -DCGLM_STATIC=ON && make && mv libcglm.a .. && cd ..
cd glad && gcc -c src/glad.c -Iinclude && ar rc ../libglad.a glad.o && cd ..
cd glfw && cmake . && make && mv src/libglfw3.a ../libglfw.a && cd ..
cd stb_image && gcc -c stb_image.c && ar rc ../libstb_image.a stb_image.o && cd ..

