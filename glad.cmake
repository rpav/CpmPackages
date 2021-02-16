CPMAddPackage(
  NAME glad
  GIT_TAG master
  GITHUB_REPOSITORY Dav1dde/glad
  OPTIONS
  "GLAD_ALL_EXTENSIONS ON"
  )

if(glad_ADDED)
  if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    message(STATUS "Adding -ldl to glad...")
    target_link_libraries(glad PUBLIC dl)
  endif()
endif()
