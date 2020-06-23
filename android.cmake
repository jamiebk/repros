message(STATUS "Enter android.cmake....")

set(ANDROID_CPP_FEATURES "rtti exceptions" CACHE STRING "")
set(CMAKE_SYSTEM_NAME Android CACHE STRING "")
set(ANDROID_TOOLCHAIN clang CACHE STRING "")
set(ANDROID_NATIVE_API_LEVEL 21 CACHE STRING "")
set(ANDROID_STL c++_static CACHE STRING "")

include("$ENV{ANDROID_NDK_HOME}/build/cmake/android.toolchain.cmake")

message(STATUS "After including android.toolchain.cmake:")
message(STATUS "    CMAKE_CXX_FLAGS_INIT = ${CMAKE_CXX_FLAGS_INIT}")
message(STATUS "    CMAKE_CXX_FLAGS = ${CMAKE_CXX_FLAGS}")

if(NOT _VCPKG_ANDROID_TOOLCHAIN)
    set(_VCPKG_ANDROID_TOOLCHAIN 1)
    get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
    if(NOT _CMAKE_IN_TRY_COMPILE)
        string(APPEND CMAKE_C_FLAGS_INIT " -fPIC ${VCPKG_C_FLAGS} ")
        string(APPEND CMAKE_CXX_FLAGS_INIT " -fPIC ${VCPKG_CXX_FLAGS} ")
        string(APPEND CMAKE_C_FLAGS_DEBUG_INIT " ${VCPKG_C_FLAGS_DEBUG} ")
        string(APPEND CMAKE_CXX_FLAGS_DEBUG_INIT " ${VCPKG_CXX_FLAGS_DEBUG} ")
        string(APPEND CMAKE_C_FLAGS_RELEASE_INIT " ${VCPKG_C_FLAGS_RELEASE} ")
        string(APPEND CMAKE_CXX_FLAGS_RELEASE_INIT " ${VCPKG_CXX_FLAGS_RELEASE} ")

        string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT " ${VCPKG_LINKER_FLAGS} ")
        string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT " ${VCPKG_LINKER_FLAGS} ")
        message(STATUS "Added flags:")
        message(STATUS "    CMAKE_CXX_FLAGS_INIT = ${CMAKE_CXX_FLAGS_INIT}")
        message(STATUS "    CMAKE_CXX_FLAGS = ${CMAKE_CXX_FLAGS}")
    endif()
endif()

message(STATUS "... exit android.cmake")
