INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_KICKSAT2GS kicksat2gs)

FIND_PATH(
    KICKSAT2GS_INCLUDE_DIRS
    NAMES kicksat2gs/api.h
    HINTS $ENV{KICKSAT2GS_DIR}/include
        ${PC_KICKSAT2GS_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    KICKSAT2GS_LIBRARIES
    NAMES gnuradio-kicksat2gs
    HINTS $ENV{KICKSAT2GS_DIR}/lib
        ${PC_KICKSAT2GS_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(KICKSAT2GS DEFAULT_MSG KICKSAT2GS_LIBRARIES KICKSAT2GS_INCLUDE_DIRS)
MARK_AS_ADVANCED(KICKSAT2GS_LIBRARIES KICKSAT2GS_INCLUDE_DIRS)
