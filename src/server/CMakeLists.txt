#
# Dependencies
#
find_package(Threads)

#
# Sources
#
set(SOURCES
    main.cc
    lib/node.cc
    lib/node.h
    lib/request_handler.cc
    lib/store.cc
    lib/store.h
)

source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${SOURCES})


#
# Target
#
add_executable(server ${SOURCES})
target_link_libraries(server
    PRIVATE
        myproto
)
