cmake_minimum_required(VERSION 3.19)

set(C74_MIN_API_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../../min-api)
include(${C74_MIN_API_DIR}/script/min-pretarget.cmake)
if(APPLE)
    set(CMAKE_OSX_DEPLOYMENT_TARGET "15.0" CACHE STRING "Minimum macOS version" FORCE)
endif()


include_directories( 
    "${C74_INCLUDES}"
    ${CMAKE_CURRENT_SOURCE_DIR}
)

set(SOURCE_FILES
    tarte.voice_tilde.cpp
)

find_package (Eigen3 5.0 REQUIRED NO_MODULE)

add_library(${PROJECT_NAME} MODULE ${SOURCE_FILES})

target_link_libraries(
    ${PROJECT_NAME} PUBLIC
    Eigen3::Eigen
    tarte::tarte
)

include(${C74_MIN_API_DIR}/script/min-posttarget.cmake)