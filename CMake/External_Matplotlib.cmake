
# Matplotlib
#
set(Matplotlib_source "${CMAKE_CURRENT_BINARY_DIR}/build/Matplotlib")

ExternalProject_Add(Matplotlib
  DOWNLOAD_DIR ${CMAKE_CURRENT_BINARY_DIR}
  SOURCE_DIR ${Matplotlib_source}
  URL ${MATPLOTLIB_URL}/${MATPLOTLIB_GZ}
  URL_MD5 ${MATPLOTLIB_MD5}
  BUILD_IN_SOURCE 1
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ${PYTHON_EXECUTABLE} setup.py build
  INSTALL_COMMAND ${PYTHON_EXECUTABLE} setup.py install
  DEPENDS ${Matplotlib_DEPENDENCIES}
  ${EP_LOG_OPTIONS}
  )
