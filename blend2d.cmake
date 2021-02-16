CPMAddPackage(
  NAME asmjit_blend2d
  GIT_TAG master
  GITHUB_REPOSITORY asmjit/asmjit
  DOWNLOAD_ONLY TRUE
  )

## Blend2D checks to see if we're a subproject, and breaks if so ;)
project(blend2d CXX)
CPMAddPackage(
  NAME blend2d
  GIT_TAG master
  GITHUB_REPOSITORY blend2d/blend2d
  OPTIONS
  "ASMJIT_DIR ${asmjit_blend2d_SOURCE_DIR}"
  "BLEND2D_STATIC TRUE"
  "BLEND2D_NO_INSTALL TRUE"
  "BLEND2D_TEST OFF"
  )
