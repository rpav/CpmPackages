CPMAddPackage(
  NAME sdlpp
  GIT_TAG master
  GITHUB_REPOSITORY mika314/sdlpp
)

if (sdlpp_ADDED)
  add_library(sdlpp INTERFACE)
  target_include_directories(sdlpp INTERFACE ${sdlpp_SOURCE_DIR})
endif()
