

set(VisIt_source "${CMAKE_CURRENT_BINARY_DIR}/build/VisIt")
set(VisIt_binary "${CMAKE_CURRENT_BINARY_DIR}/build/VisIt")
set(VisIt_install "${CMAKE_INSTALL_PREFIX}")

if(QT_QMAKE_EXECUTABLE)
  get_filename_component(QT_BINARY_DIR ${QT_QMAKE_EXECUTABLE} PATH)
  get_filename_component(QT_ROOT ${QT_BINARY_DIR} PATH)
endif()

GET_FILENAME_COMPONENT(CMAKE_PATH_VAR ${CMAKE_COMMAND} PATH)
GET_FILENAME_COMPONENT(VISIT_C_COMPILER ${CMAKE_C_COMPILER} NAME)
GET_FILENAME_COMPONENT(VISIT_CXX_COMPILER ${CMAKE_CXX_COMPILER} NAME)

MACRO(DETERMINE_VISIT_ARCHITECTURE ARCH)
    IF(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
        IF(${CMAKE_SYSTEM_PROCESSOR} STREQUAL "ppc")
            SET(${ARCH} linux-ppc)
        ELSEIF(${CMAKE_SYSTEM_PROCESSOR} STREQUAL "ppc64")
            SET(${ARCH} linux-ppc64)
        ELSEIF(${CMAKE_SYSTEM_PROCESSOR} STREQUAL "x86_64")
            SET(${ARCH} linux-x86_64)
        ELSEIF(${CMAKE_SYSTEM_PROCESSOR} STREQUAL "ia64")
            SET(${ARCH} linux-ia64)
        ELSE(${CMAKE_SYSTEM_PROCESSOR} STREQUAL "ppc")
            SET(${ARCH} linux-intel)
        ENDIF(${CMAKE_SYSTEM_PROCESSOR} STREQUAL "ppc")
    ELSEIF(${CMAKE_SYSTEM_NAME} STREQUAL "AIX")
        IF($ENV{OBJECT_MODE} STREQUAL "32")
            SET(${ARCH} "ibm-aix-pwr")
        ELSE($ENV{OBJECT_MODE} STREQUAL "32")
            SET(${ARCH} "ibm-aix-pwr64")
        ENDIF($ENV{OBJECT_MODE} STREQUAL "32")
    ELSEIF(${CMAKE_SYSTEM_NAME} STREQUAL "Darwin")
        IF(${CMAKE_SYSTEM_PROCESSOR} STREQUAL "i386")
            EXECUTE_PROCESS(COMMAND uname -r
               OUTPUT_STRIP_TRAILING_WHITESPACE
               OUTPUT_VARIABLE _OSX_VERSION)
            STRING(SUBSTRING ${_OSX_VERSION} 0 1 _OSX_MAJOR_VERSION)
            IF(${_OSX_MAJOR_VERSION} STREQUAL "1")
                # This will match 10, 11, 12, ...
                SET(${ARCH} darwin-x86_64)
            ELSE(${_OSX_MAJOR_VERSION} STREQUAL "1")
                SET(${ARCH} darwin-i386)
            ENDIF(${_OSX_MAJOR_VERSION} STREQUAL "1")
        ELSE(${CMAKE_SYSTEM_PROCESSOR} STREQUAL "i386")
            SET(${ARCH} darwin-ppc)
        ENDIF(${CMAKE_SYSTEM_PROCESSOR} STREQUAL "i386")
    ELSEIF(${CMAKE_SYSTEM_NAME} STREQUAL "FreeBSD")
        SET(${ARCH} "freebsd-${CMAKE_SYSTEM_VERSION}")
    ELSEIF(${CMAKE_SYSTEM_NAME} STREQUAL "IRIX")
        SET(${ARCH} sgi-irix6-mips2)
    ELSEIF(${CMAKE_SYSTEM_NAME} STREQUAL "SunOS")
        SET(${ARCH} "sun4-${CMAKE_SYSTEM_VERSION}-sparc")
    ELSEIF(${CMAKE_SYSTEM_NAME} STREQUAL "Tru64")
        SET(${ARCH} dec-osf1-alpha)
    ELSE(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
        # Unhandled case. Make up a string.
        SET(VISITARCHTMP "${CMAKE_SYSTEM_NAME}-${CMAKE_SYSTEM_PROCESSOR}")
        STRING(TOLOWER ${VISITARCHTMP} ${ARCH})
    ENDIF(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
ENDMACRO(DETERMINE_VISIT_ARCHITECTURE ARCH)

DETERMINE_VISIT_ARCHITECTURE(VISIT_INSTALL_PLATFORM)
SITE_NAME(VISIT_HOSTNAME)

#Add VisIt to ExternalProject
ExternalProject_Add(VisIt
  #DOWNLOAD_DIR ${VisIt_source} #${CMAKE_CURRENT_BINARY_DIR}
  SOURCE_DIR ${VisIt_source}
  BINARY_DIR ${VisIt_binary}
  INSTALL_DIR ${VisIt_install}
  #SVN_REPOSITORY ${VISIT_SVN}
  URL ${VISIT_URL}/${VISIT_GZ}
  #URL_MD5 ${VISIT_MD5}
  PATCH_COMMAND ""
  #CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${VisIt_install} -DCMAKE_INSTALL_NAME_DIR=${VisIt_install}/${VISIT_VERSION}/${VISIT_INSTALL_PLATFORM}/lib
  DEPENDS ${VisIt_DEPENDENCIES}
  ${EP_LOG_OPTIONS}
)

SET(VISIT_PARALLEL_PROCESSORS "4" CACHE STRING "Enter number of parallel processors used by VisIt" FORCE)
#MARK_AS_ADVANCED(CLEAR VISIT_PARALLEL_PROCESSORS)

if(NOT EXISTS ${CMAKE_INSTALL_PREFIX}/lib)
  file(MAKE_DIRECTORY ${CMAKE_INSTALL_PREFIX}/lib)
endif()

MESSAGE(STATUS "Using ${VISIT_PARALLEL_PROCESSORS} processors to build VisIt") 
# Before install step
#load VisIt installation 
ExternalProject_Add_Step(VisIt BuildVisItPatch_Step1
  COMMAND echo yes | svn_bin/build_visit --gpl --console --cc ${VISIT_C_COMPILER} --cxx ${VISIT_CXX_COMPILER} --alt-vtk-dir ${ParaView_binary}/VTK --alt-pyqt-dir ${CMAKE_INSTALL_PREFIX} --alt-R-dir ${cdat_EXTERNALS} --alt-netcdf-dir ${cdat_EXTERNALS} --alt-hdf5-dir ${cdat_EXTERNALS} --thirdparty-path ${CMAKE_CURRENT_BINARY_DIR}/visit-thirdparty --cmake-bin-dir ${CMAKE_PATH_VAR} --alt-python-dir ${CMAKE_INSTALL_PREFIX} --alt-qt-dir ${QT_ROOT} --no-visit --makeflags -j${VISIT_PARALLEL_PROCESSORS} --log-file ${CMAKE_BINARY_DIR}/logs/VisIt-build-out.log --no-mesa
  DEPENDEES patch
  DEPENDERS configure
  WORKING_DIRECTORY ${VisIt_source})

#add references to VisIt's cmake
#SET(TMP_STR1 "FILE(APPEND ${VisIt_source}/${VISIT_HOSTNAME}.cmake \"VISIT_OPTION_DEFAULT(VISIT_HDF5_DIR ${cdat_EXTERNALS})\\n\")\n")
#SET(TMP_STR2 "FILE(APPEND ${VisIt_source}/${VISIT_HOSTNAME}.cmake \"VISIT_OPTION_DEFAULT(VISIT_NETCDF_DIR ${cdat_EXTERNALS})\\n\")\n")
#SET(TMP_STR3 "FILE(APPEND ${VisIt_source}/${VISIT_HOSTNAME}.cmake \"VISIT_OPTION_DEFAULT(HAVE_PYQT TYPE BOOL ON)\\n\")\n")
#SET(TMP_STR4 "FILE(APPEND ${VisIt_source}/${VISIT_HOSTNAME}.cmake \"VISIT_OPTION_DEFAULT(VISIT_SIP_DIR ${CMAKE_INSTALL_PREFIX})\\n\")\n")
SET(TMP_STR1 "FILE(APPEND ${VisIt_source}/${VISIT_HOSTNAME}.cmake \"VISIT_OPTION_DEFAULT(VISIT_OSX_USE_RPATH TYPE BOOL ON)\\n\")\n")
SET(TMP_STR2 "FILE(APPEND ${VisIt_source}/${VISIT_HOSTNAME}.cmake \"VISIT_OPTION_DEFAULT(VISIT_QT_SKIP_INSTALL TYPE BOOL ON)\\n\")\n")
SET(TMP_STR3 "FILE(APPEND ${VisIt_source}/${VISIT_HOSTNAME}.cmake \"VISIT_OPTION_DEFAULT(VISIT_PYTHON_SKIP_INSTALL TYPE BOOL ON)\\n\")\n")
SET(TMP_STR4 "FILE(APPEND ${VisIt_source}/${VISIT_HOSTNAME}.cmake \"VISIT_OPTION_DEFAULT(VISIT_HEADERS_SKIP_INSTALL TYPE BOOL ON)\\n\")\n")
SET(TMP_STR5 "FILE(APPEND ${VisIt_source}/${VISIT_HOSTNAME}.cmake \"VISIT_OPTION_DEFAULT(VISIT_VTK_SKIP_INSTALL TYPE BOOL ON)\\n\")\n")
SET(TMP_STR6 "FILE(APPEND ${VisIt_source}/${VISIT_HOSTNAME}.cmake \"VISIT_OPTION_DEFAULT(VISIT_R_SKIP_INSTALL TYPE BOOL ON)\\n\")\n")
SET(TMP_STR7 "FILE(APPEND ${VisIt_source}/${VISIT_HOSTNAME}.cmake \"VISIT_OPTION_DEFAULT(CMAKE_EXE_LINKER_FLAGS \\\"-L${cdat_EXTERNALS}/lib\\\")\\n\")\n")

FILE(WRITE   ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake ${TMP_STR1})
FILE(APPEND  ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake ${TMP_STR2})
FILE(APPEND  ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake ${TMP_STR3})
FILE(APPEND  ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake ${TMP_STR4})
FILE(APPEND  ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake ${TMP_STR5})
FILE(APPEND  ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake ${TMP_STR6})
FILE(APPEND  ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake ${TMP_STR7})
#FILE(APPEND  ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake ${TMP_STR8})
#FILE(APPEND  ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake "FILE(WRITE ${VisIt_source}/CMakeLists.txt \"cmake_minimum_required(VERSION 2.8)\\n\")\n")
#FILE(APPEND  ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake "FILE(APPEND ${VisIt_source}/CMakeLists.txt \"add_subdirectory(mangled_src)\\n\")\n")

ExternalProject_Add_Step(VisIt BuildVisItPatch_Step2
  COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake && ${CMAKE_COMMAND} -E  copy ${VisIt_source}/${VISIT_HOSTNAME}.cmake ${VisIt_source}/config-site/${VISIT_HOSTNAME}.cmake
  DEPENDEES BuildVisItPatch_Step1
  DEPENDERS configure
  #DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/visit.cmake #only use to force steps..
  WORKING_DIRECTORY ${VisIt_source})

#ExternalProject_Add_Step(VisIt BuildVisItPatch_Step3
#  COMMAND ${CMAKE_COMMAND} -E  copy ${VisIt_source}/${VISIT_HOSTNAME}.cmake ${VisIt_source}/config-site/${VISIT_HOSTNAME}.cmake
#  DEPENDEES BuildVisItPatch_Step2
#  DEPENDERS configure
#  #DEPENDS ${VisIt_source}/${VISIT_HOSTNAME}.cmake
#  WORKING_DIRECTORY ${VisIt_source})

#ExternalProject_Add_Step(VisIt BuildVisItPatch_Step4
#  COMMAND echo yes | svn_bin/build_visit --gpl --console --cc ${VISIT_C_COMPILER} --cxx ${VISIT_CXX_COMPILER} --alt-vtk-dir ${ParaView_binary}/VTK --alt-pyqt-dir ${CMAKE_INSTALL_PREFIX} --alt-R-dir ${cdat_EXTERNALS} --alt-netcdf-dir ${cdat_EXTERNALS} --alt-hdf5-dir ${cdat_EXTERNALS} --thirdparty-path ${CMAKE_CURRENT_BINARY_DIR}/visit-thirdparty --cmake-bin-dir ${CMAKE_PATH_VAR} --alt-python-dir ${CMAKE_INSTALL_PREFIX} --alt-qt-dir ${QT_ROOT} --no-visit --makeflags -j${VISIT_PARALLEL_PROCESSORS} --log-file ${CMAKE_BINARY_DIR}/logs/VisIt-build-out.log --no-mesa
#  DEPENDEES BuildVisItPatch_Step3
#  DEPENDERS configure
#  WORKING_DIRECTORY ${VisIt_source})


#After installation
#Make symlinks of VisIt's lib, plugins, 
#move pyqt_pyqtviewer.so and plugin into python site-packages
ExternalProject_Add_Step(VisIt InstallVisItLibSymLink
  COMMAND ${CMAKE_COMMAND} -E create_symlink ${VisIt_install}/${VISIT_VERSION}/${VISIT_INSTALL_PLATFORM}/lib ${CMAKE_INSTALL_PREFIX}/lib/VisIt-${VISIT_VERSION}
  DEPENDEES install
  WORKING_DIRECTORY ${cdat_CMAKE_BINARY_DIR})

ExternalProject_Add_Step(VisIt InstallVisItPluginSymLink
  COMMAND ${CMAKE_COMMAND} -E create_symlink ${VisIt_install}/${VISIT_VERSION}/${VISIT_INSTALL_PLATFORM}/plugins ${CMAKE_INSTALL_PREFIX}/lib/VisIt-${VISIT_VERSION}-plugins
  DEPENDEES install
  WORKING_DIRECTORY ${cdat_CMAKE_BINARY_DIR})

#copy hdf5, netcdf
FILE(WRITE ${CMAKE_CURRENT_BINARY_DIR}/visit_install_patch "MESSAGE(STATUS \"Executing VisIt post installation steps\")\n")
FILE(APPEND ${CMAKE_CURRENT_BINARY_DIR}/visit_install_patch "file(GLOB hdf5_files ${HDF5_install}/lib/libhdf5*${_LINK_LIBRARY_SUFFIX})\n")
FILE(APPEND ${CMAKE_CURRENT_BINARY_DIR}/visit_install_patch "file(COPY \${hdf5_files} DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/VisIt-${VISIT_VERSION}/)\n")

FILE(APPEND ${CMAKE_CURRENT_BINARY_DIR}/visit_install_patch "file(GLOB netcdf_files ${netcdf_install}/lib/libnetcdf*${_LINK_LIBRARY_SUFFIX})\n")
FILE(APPEND ${CMAKE_CURRENT_BINARY_DIR}/visit_install_patch "file(COPY \${netcdf_files} DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/VisIt-${VISIT_VERSION}/)\n")

FILE(APPEND ${CMAKE_CURRENT_BINARY_DIR}/visit_install_patch "file(GLOB z_files ${zlib_install}/lib/libz*${_LINK_LIBRARY_SUFFIX})\n")
FILE(APPEND ${CMAKE_CURRENT_BINARY_DIR}/visit_install_patch "file(COPY \${z_files} DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/VisIt-${VISIT_VERSION}/)\n")

FILE(APPEND ${CMAKE_CURRENT_BINARY_DIR}/visit_install_patch "file(GLOB curl_files ${curl_install}/lib/libcurl*${_LINK_LIBRARY_SUFFIX})\n")
FILE(APPEND ${CMAKE_CURRENT_BINARY_DIR}/visit_install_patch "file(COPY \${curl_files} DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/VisIt-${VISIT_VERSION}/)\n")

ExternalProject_Add_Step(VisIt InstallVisItExternalLibraries
  COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/visit_install_patch
  DEPENDEES InstallVisItLibSymLink
  WORKING_DIRECTORY ${cdat_CMAKE_BINARY_DIR}
  )

ExternalProject_Add_Step(VisIt RemoveUnnecessaryDatabaseReaders
  COMMAND find . ! \( -iname "*netcdf*" -o -iname "*image*" -o -iname "*hdf5*" -o -iname "*pixie*" -o -iname "*vtk*" -o -iname "*mtk*" -o -iname "*xdmf*" \) -type f -delete
  DEPENDEES install
  WORKING_DIRECTORY ${VisIt_install}/${VISIT_VERSION}/${VISIT_INSTALL_PLATFORM}/plugins/databases)

ExternalProject_Add_Step(VisIt InstallVisItModule
  COMMAND ${CMAKE_COMMAND} -E create_symlink ${VisIt_install}/${VISIT_VERSION}/${VISIT_INSTALL_PLATFORM}/lib/site-packages/visit ${PYTHON_SITE_PACKAGES}/visit
  DEPENDEES install
  WORKING_DIRECTORY ${cdat_CMAKE_BINARY_DIR})

FILE(WRITE ${CMAKE_CURRENT_BINARY_DIR}/r_ismev_package "r = getOption('repos'); r['CRAN'] = 'http://cran.us.r-project.org'; options(repos = r); rm(r); install.packages('ismev')")

ExternalProject_Add_Step(VisIt AddRDependencies
  COMMAND ${cdat_EXTERNALS}/bin/Rscript ${CMAKE_CURRENT_BINARY_DIR}/r_ismev_package
  DEPENDEES install)
