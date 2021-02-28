cmake_minimum_required(VERSION 3.0)
project(GraphicsTemplate)

# Set the module path to include scripts
list(APPEND CMAKE_MODULE_PATH  ${GraphicsTemplate_SOURCE_DIR}/CMake)
include(Configure)

if (GraphicsTemplate_ExternalTarget)

    set(TargetFolders ${GraphicsTemplate_TargetFolders})
    set(TargetName    ${GraphicsTemplate_TargetName})
    set(TargetGroup   ${GraphicsTemplate_TargetGroup})
else()
    subdirs(CMake)

    set(TargetFolders FALSE)
    set(TargetName GraphicsTemplate)

    set(GraphicsTemplate_INCLUDE  ${GraphicsTemplate_SOURCE_DIR}/Source)
    set(GraphicsTemplate_LIBRARY  ${TargetName})

endif()

subdirs(Source)

if (GraphicsTemplate_BUILD_TEST)
    set(BUILD_GMOCK   OFF CACHE BOOL "" FORCE)
    set(INSTALL_GTEST OFF CACHE BOOL "" FORCE)

    subdirs(Test/googletest)
    subdirs(Test)
endif()
