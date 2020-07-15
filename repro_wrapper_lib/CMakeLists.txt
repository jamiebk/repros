cmake_minimum_required(VERSION 3.4.1)

find_library(log-lib log)

add_library(repro-wrapper SHARED wrapper.cpp)
set_target_properties(repro-wrapper PROPERTIES OUTPUT_NAME repro)
target_link_libraries(repro-wrapper repro-implementation ${log-lib})

