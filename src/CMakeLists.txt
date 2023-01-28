
set(EXECUTABLE_NAME otus-9-example)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

find_package(Async REQUIRED)

add_executable(${EXECUTABLE_NAME} main.cpp)

set_target_properties(
        ${EXECUTABLE_NAME} PROPERTIES
        CXX_STANDARD 17
        CXX_STANDARD_REQUIRED ON
)

target_include_directories(
        ${EXECUTABLE_NAME}
        PRIVATE
        ${PROJECT_DEPS_INCLUDES}
        ${ASYNC_INCLUDE_DIRS}
)

target_link_libraries(
        ${EXECUTABLE_NAME}
        PRIVATE
        ${PROJECT_DEPS}
        ${ASYNC_LIBS}
)

install(TARGETS ${EXECUTABLE_NAME} RUNTIME DESTINATION bin)