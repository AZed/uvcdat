
# PyQt
#
set(proj PyQt)

ExternalProject_Add(${proj}
  URL ${PYQT_URL}/${PYQT_GZ_${CMAKE_PLATFORM}}
  URL_MD5 ${PYQT_MD5_${CMAKE_PLATFORM}}
  BUILD_IN_SOURCE 1
  CONFIGURE_COMMAND ${LIBRARY_PATH}=${PYTHON_LIBRARY_DIR}
     ${PYTHON_EXECUTABLE} configure.py -q ${QT_QMAKE_EXECUTABLE} --confirm-license
  DEPENDS ${PyQt_DEPENDENCIES}
  )
