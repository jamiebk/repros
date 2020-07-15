cmake_minimum_required(VERSION 3.4.1)

add_library(repro-implementation implementation.cpp implementation.h)
# set_target_properties(repro-implementation PROPERTIES OUTPUT_NAME repro)
target_include_directories(repro-implementation PUBLIC .)

