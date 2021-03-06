set(LLNL_URL http://uv-cdat.llnl.gov/cdat/resources)
set(WGET_MAJOR 1)
set(WGET_MINOR 12)
set(WGET_PATCH)
set(WGET_URL ${LLNL_URL})
set(WGET_GZ wget-${WGET_MAJOR}.${WGET_MINOR}.tar.gz)
set(WGET_MD5 141461b9c04e454dc8933c9d1f2abf83)

add_cdat_package(Wget "" "Build Wget" OFF)

if(CDAT_BUILD_WGET)
  if(WIN32)
    set(WGET_EXECUTABLE ${cdat_EXTERNALS}/bin/wget.exe)
  else()
    set(WGET_EXECUTABLE ${cdat_EXTERNALS}/bin/wget)
  endif()
endif()

set(HASWGET ${WGET_EXECUTABLE})

