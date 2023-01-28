# ASYNC_FOUND
# ASYNC_INCLUDE_DIRS
# ASYNC_LIBS

set(ASYNC_FOUND FALSE)
set(ASYNC_INCLUDE_DIRS)
set(ASYNC_LIBS)

find_path(ASYNC_INCLUDE_DIRS async.h
        PATHS
        /usr/local/include/
        ${CMAKE_SOURCE_DIR}/async/include/)

find_library(ASYNC_LIBS
        NAMES libasync.so
        PATHS
        /usr/local/lib/
        ${CMAKE_SOURCE_DIR}/build/async/)

if (ASYNC_INCLUDE_DIRS AND ASYNC_LIBS)
    set(ASYNC_FOUND TRUE)
    message(STATUS "Found ${ASYNC_INCLUDE_DIRS} ${ASYNC_LIBS}")
else()
    message(FATAL_ERROR "async not found (
        [${ASYNC_INCLUDE_DIRS}]
        [${ASYNC_LIBS}])")
endif()

MARK_AS_ADVANCED(ASYNC_FOUND)
