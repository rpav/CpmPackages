CPMAddPackage(
  NAME nanovg
  GIT_TAG master
  GITHUB_REPOSITORY memononen/nanovg
  DOWNLOAD_ONLY TRUE
  )

if(nanovg_ADDED)
  if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    string(APPEND CMAKE_CXX_FLAGS " -Wno-pedantic")
    message(STATUS "CMAKE_CXX_FLAGS amended for nanovg: ${CMAKE_CXX_FLAGS}")
  endif()

  file(GLOB NANOVG_HEADERS
    ${nanovg_SOURCE_DIR}/src/*.h)

  file(GLOB NANOVG_SOURCES
    ${nanovg_SOURCE_DIR}/src/*.c)

  add_library(nanovg STATIC ${NANOVG_SOURCES} ${NANOVG_HEADERS})
  target_include_directories(nanovg
    PUBLIC
    ${nanovg_SOURCE_DIR}/src
    )

  if(WIN32)
    target_compile_definitions(nanovg PRIVATE -D_CRT_SECURE_NO_WARNINGS)
  endif()
endif()
