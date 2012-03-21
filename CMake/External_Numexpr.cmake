
# Numexpr
#
set(Numexpr_source "${CMAKE_CURRENT_BINARY_DIR}/build/Numexpr")

ExternalProject_Add(Numexpr
  DOWNLOAD_DIR ${CMAKE_CURRENT_BINARY_DIR}
  SOURCE_DIR ${Numexpr_source}
  URL ${NUMEXPR_URL}/${NUMEXPR_GZ}
  URL_MD5 ${NUMEXPR_MD5}
  BUILD_IN_SOURCE 1
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ${PYTHON_EXECUTABLE} setup.py build
  INSTALL_COMMAND ${PYTHON_EXECUTABLE} setup.py install ${PYTHON_EXTRA_PREFIX}
  DEPENDS ${Numexpr_DEPENDENCIES}
  ${EP_LOG_OPTIONS}
  )
