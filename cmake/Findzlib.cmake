#       ZLIB_INCLUDE_DIRS      Header file directories
#       ZLIB_LIBRARIES         Archive/shared objects
#       ZLIB_FOUND             Archive/shared objects

find_path(ZLIB_INCLUDE_DIR
    NAMES
        "zlib.h"
    PATHS
        "~/Library/Frameworks"
        "/Library/Frameworks"
        "/System/Library/Frameworks"
        "/usr"
        "/opt"
        "~/homebrew"
        "/"
    PATH_SUFFIXES
        "dynamic/include/zlib"
        # "dynamic_libs/include/zlib"
        "local"
        "include"
        "external"
        "local/include"
    NO_DEFAULT_PATH
)

find_library(ZLIB_LIBRARY
    NAMES
        "z"
        "zlib"
        "ZLIB"
    PATHS
        "~/Library/Frameworks"
        "/Library/Frameworks"
        "/System/Library/Frameworks"
        "/usr"
        "/opt"
        "~/homebrew"
        "/"
    PATH_SUFFIXES
        "dynamic/lib/zlib"
        # "dynamic_libs/lib/zlib"
        "lib"
        "local/lib"
        "lib/x86_64-linux-gnu"
    NO_DEFAULT_PATH
)

set(ZLIB_INCLUDE_DIRS ${ZLIB_INCLUDE_DIR})
set(ZLIB_LIBRARIES ${ZLIB_LIBRARY})

include(${CMAKE_CURRENT_LIST_DIR}/FindPackageHandleStandardArgs.cmake)
find_package_handle_standard_args(ZLIB
    REQUIRED_VARS ZLIB_INCLUDE_DIRS ZLIB_LIBRARIES
)
