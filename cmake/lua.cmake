message(STATUS "Looking for Lua 5.2")
find_package(Lua52 QUIET)
if(NOT ${LUA_FOUND})
  message(STATUS "Looking for Lua 5.1")
  find_package(Lua51 QUIET)
  if(NOT ${LUA_FOUND})
    message(STATUS "Looking for any Lua")
    find_package(Lua QUIET)
    if(NOT ${LUA_FOUND})
      message(FATAL_ERROR "Lua was not found but is required")
    endif()
  endif()
endif()
message(STATUS "Found Lua")

include_directories(${LUA_INCLUDE_DIR})
