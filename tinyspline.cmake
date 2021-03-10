CPMAddPackage(
  NAME tinyspline
  GIT_TAG master
  GITHUB_REPOSITORY msteinbeck/tinyspline
  DOWNLOAD_ONLY TRUE
  )

if(tinyspline_ADDED)
  set(root ${tinyspline_SOURCE_DIR})

  add_library(tinysplinecpp STATIC
  ${root}/src/parson.c
  ${root}/src/parson.h
  ${root}/src/tinyspline.c
  ${root}/src/tinyspline.h
  ${root}/src/tinysplinecxx.cxx
  ${root}/src/tinysplinecxx.h
  )
target_include_directories(tinysplinecpp
  PUBLIC ${root}/src
  )
endif()
