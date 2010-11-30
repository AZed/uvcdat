
# SIP
set(proj sip)

ExternalProject_Add(${proj}
  URL ${SIP_URL}/${SIP_GZ}
  URL_MD5 ${SIP_MD5}
  SOURCE_DIR ${proj}
  BUILD_IN_SOURCE 1
  CONFIGURE_COMMAND ${LIBRARY_PATH}=${PYTHON_LIBRARY_DIR}
     ${PYTHON_EXECUTABLE} configure.py
    CC=${CMAKE_C_COMPILER}
    CXX=${CMAKE_CXX_COMPILER}
  DEPENDS python
  )

