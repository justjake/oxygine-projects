cmake_minimum_required (VERSION 2.6)
project (DrcSimulator)

add_subdirectory(../../oxygine-framework-with-sdl/oxygine-framework/ oxygine-framework)
add_definitions(${OXYGINE_DEFINITIONS})
include_directories(${OXYGINE_INCLUDE_DIRS})
link_directories(${OXYGINE_LIBRARY_DIRS})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
add_executable(DrcSimulator ../src/example.cpp ../src/main.cpp  ../src/example.h )

if (WIN32) #disable console mode for VC++
	set_target_properties(DrcSimulator PROPERTIES WIN32_EXECUTABLE TRUE)
endif(WIN32)

target_link_libraries(DrcSimulator ${OXYGINE_CORE_LIBS})