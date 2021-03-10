CPMAddPackage(
  NAME stb
  GIT_TAG master
  GITHUB_REPOSITORY nothings/stb
  DOWNLOAD_ONLY TRUE
  )

if(stb_ADDED)
  add_library(stb INTERFACE)
  target_include_directories(stb INTERFACE ${stb_SOURCE_DIR}/)
endif()
