cmake_minimum_required(VERSION 3.2)
set (CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(CardGame)

file(GLOB SOURCES src/*.cpp)

add_executable(${PROJECT_NAME} ${SOURCES})

add_subdirectory(Vendor/GLFW GLFW)
add_subdirectory(Vendor/GLAD GLAD)

add_custom_command(
    TARGET ${PROJECT_NAME} POST_BUILD 
    COMMAND ${CMAKE_COMMAND} -E copy_directory "${CMAKE_SOURCE_DIR}/Shader" 
												"${CMAKE_BINARY_DIR}/Shader"
    COMMENT "Copying Shaders to Binary directory"
)

add_custom_command(
    TARGET ${PROJECT_NAME} POST_BUILD 
    COMMAND ${CMAKE_COMMAND} -E copy_directory "${CMAKE_SOURCE_DIR}/Assets" 
												"${CMAKE_BINARY_DIR}/Assets"
    COMMENT "Copying Assets to Binary directory"
)

target_include_directories(${PROJECT_NAME} 
	PUBLIC include	
	PUBLIC Vendor/GLFW/include
	PUBLIC Vendor/GLAD/include
)

target_link_libraries(${PROJECT_NAME}
  #opengl32
	glfw
	glad
)
