cmake_minimum_required (VERSION 3.8)

project ("repros")

if(ANDROID)
    add_library(repromain SHARED "main.cpp")
else()
    add_executable(repromain "main.cpp")
endif()

find_package(Boost COMPONENTS filesystem REQUIRED)
target_link_libraries(repromain PUBLIC Boost::filesystem)
