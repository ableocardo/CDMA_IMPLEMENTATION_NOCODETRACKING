INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_SPREADING spreading)

FIND_PATH(
    SPREADING_INCLUDE_DIRS
    NAMES spreading/api.h
    HINTS $ENV{SPREADING_DIR}/include
        ${PC_SPREADING_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    SPREADING_LIBRARIES
    NAMES gnuradio-spreading
    HINTS $ENV{SPREADING_DIR}/lib
        ${PC_SPREADING_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SPREADING DEFAULT_MSG SPREADING_LIBRARIES SPREADING_INCLUDE_DIRS)
MARK_AS_ADVANCED(SPREADING_LIBRARIES SPREADING_INCLUDE_DIRS)

