cmake_minimum_required(VERSION 3.13)
project(Lab3_4)

set(CMAKE_CXX_STANDARD 14)

add_executable(Lab3_4 Domain.h Domain.c main.c Repository.h Repository.c Service.h Service.c UI.h UI.c)