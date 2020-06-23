cmake_minimum_required (VERSION 3.8)

if(REPRO_TEST_TOOLCHAIN)
    message(STATUS "Before project")
    message(STATUS "    CMAKE_CXX_FLAGS_INIT = ${CMAKE_CXX_FLAGS_INIT}")
    message(STATUS "    CMAKE_CXX_FLAGS = ${CMAKE_CXX_FLAGS}")

    project("repro")

    message(STATUS "After project")
    message(STATUS "    CMAKE_CXX_FLAGS_INIT = ${CMAKE_CXX_FLAGS_INIT}")
    message(STATUS "    CMAKE_CXX_FLAGS = ${CMAKE_CXX_FLAGS}")
    return()
endif()

project("repro")
add_library(main SHARED "main.cpp")

find_package(Boost COMPONENTS filesystem REQUIRED)
target_link_libraries(main PUBLIC Boost::filesystem)
