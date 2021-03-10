CPMAddPackage(
  NAME backward_cpp
  GIT_TAG master
  GITHUB_REPOSITORY bombela/backward-cpp
  DOWNLOAD_ONLY TRUE
  )

if(backward_cpp_ADDED)
  add_library(backward_cpp INTERFACE ${backward_cpp_SOURCE_DIR}/backward.hpp)
  target_include_directories(backward_cpp INTERFACE ${backward_cpp_SOURCE_DIR}/)
endif()
