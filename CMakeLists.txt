cmake_minimum_required (VERSION 3.8)

project ("repros")

add_executable (repros "main.cpp")

find_package(fmt REQUIRED)
target_link_libraries(repros fmt::fmt)