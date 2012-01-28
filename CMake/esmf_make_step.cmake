
include(/home/research/kindig/projects/cdat/CMake/cdat_common_environment.cmake)

message("cdat_source "${esmf_source})
message("cdat_install "${esmf_install})
set(esmf_source "${CMAKE_CURRENT_BINARY_DIR}")
set(esmf_install "/tmp/cdat/Externals")

message("")
message("Make_step ESMF")
message("source_dir "${esmf_source})
message("esmf_install "${esmf_install})
message("")

set(ENV{ESMF_DIR} ${esmf_source})
set(ENV{ESMF_INSTALL_PREFIX} ${esmf_install})
set(ENV{ESMF_COMM} mpiuni)

execute_process(
  COMMAND make
  WORKING_DIRECTORY /home/research/kindig/projects/cdat/build/esmf
  OUTPUT_VARIABLE CDAT_OUT
  ERROR_VARIABLE CDAT_ERR
  RESULT_VARIABLE res)

if(NOT ${res} EQUAL 0)
  message("Make Errors detected: \n${CDAT_OUT}\n${CDAT_ERR}")
  message(FATAL_ERROR "Error in Make")
endif()
message("Make succeeded.")
