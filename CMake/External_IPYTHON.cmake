ExternalProject_Add(IPYTHON
  DOWNLOAD_COMMAND ""
  WORKING_DIRECTORY ${CMAKE_INSTALL_PREFIX}
  BUILD_IN_SOURCE 1
  CONFIGURE_COMMAND ""
  BUILD_COMMAND  ""
  INSTALL_COMMAND  ${EASY_INSTALL_BINARY} ipython
  DEPENDS ${IPYTHON_DEPENDENCIES}
  ${EP_LOG_OPTIONS}
  )
