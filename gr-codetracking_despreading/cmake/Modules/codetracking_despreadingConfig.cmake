INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_CODETRACKING_DESPREADING codetracking_despreading)

FIND_PATH(
    CODETRACKING_DESPREADING_INCLUDE_DIRS
    NAMES codetracking_despreading/api.h
    HINTS $ENV{CODETRACKING_DESPREADING_DIR}/include
        ${PC_CODETRACKING_DESPREADING_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    CODETRACKING_DESPREADING_LIBRARIES
    NAMES gnuradio-codetracking_despreading
    HINTS $ENV{CODETRACKING_DESPREADING_DIR}/lib
        ${PC_CODETRACKING_DESPREADING_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(CODETRACKING_DESPREADING DEFAULT_MSG CODETRACKING_DESPREADING_LIBRARIES CODETRACKING_DESPREADING_INCLUDE_DIRS)
MARK_AS_ADVANCED(CODETRACKING_DESPREADING_LIBRARIES CODETRACKING_DESPREADING_INCLUDE_DIRS)
