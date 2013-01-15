cmake_minimum_required(VERSION 2.8.8)

# Use system package and if set to use cdat package then undo it
#-----------------------------------------------------------------------------
macro(cdat_use_system_package package_name)
  set(system_package_name "${package_name}")
  if(NOT "${ARGV1}" STREQUAL "")
    set(system_package_name "${ARGV1}")
  endif()

  string(TOUPPER ${package_name} uc_package)
  string(TOLOWER ${package_name} lc_package)
  string(TOUPPER ${system_package_name} uc_sys_package)
  string(TOLOWER ${system_package_name} lc_sys_package)

  # Better safe than sorry
  if(CDAT_USE_SYSTEM_${uc_sys_package})
    message("[INFO] Removing external package ${package_name}")
    unset(${lc_package}_pkg)
    if(external_packages)
      list(REMOVE_ITEM external_packages ${package_name})
    endif()

    if(${uc_sys_package}_INCLUDE_DIR)
      list(APPEND found_system_include_dirs ${${uc_sys_package}_INCLUDE_DIR})
      message("[INFO] Including: ${uc_sys_package}_INCLUDE_DIR: ${${uc_sys_package}_INCLUDE_DIR}")
    endif()

    if(${uc_sys_package}_LIBRARY)
      get_filename_component(lib_path ${${uc_sys_package}_LIBRARY} PATH)
      list(APPEND found_system_libraries ${lib_path})
      message("[INFO]  Linking: ${uc_sys_package}_LIBRARY: ${lib_path}")
    endif()
  endif()
endmacro()

# Add pacakge that should be built be cdat
#-----------------------------------------------------------------------------
macro (add_cdat_package package_name)
  # Be consistent
  string(TOUPPER ${package_name} uc_package)
  string(TOLOWER ${package_name} lc_package)

  # Set various important variables
  set(version)
  set(message "Build ${package_name}")
  set(use_system_message "Use system ${package_name}")
  set(option_default ON)
  set(inv_option_default OFF)
  set(cdat_${package_name}_FOUND OFF)
  set(cdat_check_system_package ON)

  # ARGV1 will be the version string
  if(NOT "" STREQUAL "${ARGV1}")
    set(version "${ARGV1}")
    message("[INFO] version ${version} of ${uc_package} is required by UVCDAT")
  endif()

  # ARGV2 is the build message
  if(NOT "" STREQUAL "${ARGV2}")
    set(message "${msg}")
  endif()

  # ARGV3 is the initial value (ON/OFF)
  if(NOT "" STREQUAL "${ARGV3}")
    set(option_default ${ARGV3})
    if(NOT option_default)
      set(inv_option_default ON)
    endif()
  endif()

  # ARGV4 if should check system package existence (ON/OFF)
  if(NOT "" STREQUAL "${ARGV4}")
    set(cdat_check_system_package ${ARGV4})
  endif()

  # Check if we are allowed to use system package; If yes, then fill out
  # options appropriately
  option(CDAT_BUILD_${uc_package} "${message}" ${option_default})
  mark_as_advanced(CDAT_BUILD_${uc_package})

  option(CDAT_USE_SYSTEM_${uc_package} "${use_system_message}" ${inv_option_default})
  set_property(CACHE CDAT_USE_SYSTEM_${uc_package} PROPERTY TYPE INTERNAL)

  #  If this is an optional package
  if(NOT "" STREQUAL "${ARGV3}")
    # Find system package first and if it exits provide an option to use
    # system package
    if(DEFINED version)
      find_package(${package_name} ${version} QUIET)
    else()
      find_package(${package_name} QUIET)
    endif()

    # Unset advanced
    mark_as_advanced(CLEAR CDAT_BUILD_${uc_package})

    if(${package_name}_FOUND OR ${uc_package}_FOUND)
      set(cdat_${package_name}_FOUND ON)
    endif()

    # Show in the GUI
    set_property(CACHE CDAT_USE_SYSTEM_${uc_package} PROPERTY TYPE BOOL)

    # If build and use system both are ON, then build wins
    if(CDAT_BUILD_${uc_package})
      set_property(CACHE CDAT_USE_SYSTEM_${uc_package} PROPERTY VALUE OFF)
      mark_as_advanced(${package_name}_DIR)
    endif()

    # If not use system package then build package
    if(cdat_check_system_package AND CDAT_USE_SYSTEM_${uc_package}
       AND NOT cdat_${package_name}_FOUND)
      mark_as_advanced(CLEAR ${package_name}_DIR)
      message(FATAL_ERROR "[ERROR] CDAT_USE_SYSTEM_${uc_package} is ON but not found")
    endif()

  else()
    mark_as_advanced(${package_name}_DIR)
  endif()

  if(NOT CDAT_USE_SYSTEM_${uc_package})
      list(APPEND external_packages "${package_name}")
      set(${lc_package}_pkg "${package_name}")
  else()
    cdat_use_system_package("${package_name}")
  endif()
endmacro()

#-----------------------------------------------------------------------------
macro(enable_cdat_package_deps package_name)
  string(TOUPPER ${package_name} uc_package)
  string(TOLOWER ${package_name} lc_package)

  if (CDAT_BUILD_${uc_package})
    foreach(dep ${${package_name}_deps})
      string(TOUPPER ${dep} uc_dep)
      if(NOT CDAT_USE_SYSTEM_${uc_dep} AND NOT CDAT_BUILD_${uc_dep})
        set(CDAT_BUILD_${uc_dep} ON CACHE BOOL "" FORCE)
        message("[INFO] Setting build package -- ${dep} ON -- as required by ${package_name}")
      endif()
      if(NOT DEFINED CDAT_USE_SYSTEM_${uc_dep})
        mark_as_advanced(CDAT_BUILD_${uc_dep})
      endif()
    endforeach()
  endif()
endmacro()

# Disable a cdat package
#-----------------------------------------------------------------------------
macro(disable_cdat_package package_name)
  string(TOUPPER ${package_name} uc_package)
  string(TOLOWER ${package_name} lc_package)

  set(cdat_var CDAT_BUILD_${uc_package})
  if(DEFINED cdat_var)
    set_property(CACHE ${cdat_var} PROPERTY VALUE OFF)
  endif()
endmacro()

# Add cdat package which only shows up if dependencies are met
#-----------------------------------------------------------------------------
include(CMakeDependentOption)
macro(add_cdat_package_dependent package_name version build_message value dependencies default)
  string(TOUPPER ${package_name} uc_package)
  string(TOLOWER ${package_name} lc_package)

  cmake_dependent_option(CDAT_BUILD_${uc_package} "${message}" ${value} "${dependencies}" ${default})

  add_cdat_package("${package_name}" "${version}" "${build_message}" ${CDAT_BUILD_${uc_package}})

endmacro()

# Add cdat package but provides an user with an option to use-system
# installation of the project. The main difference with add_cdat_package
# is that here the system package has to be used if build package
# is turned OFF.
#-----------------------------------------------------------------------------
macro(add_cdat_package_or_use_system package_name system_package_name)
  string(TOUPPER ${package_name} uc_package)
  string(TOLOWER ${package_name} lc_package)
  string(TOUPPER ${system_package_name} uc_sys_package)
  string(TOLOWER ${system_package_name} lc_sys_package)

  set(dependencies ${ARGV2})
  set(message "Build ${package_name}")
  set(use_system_message "Use system ${system_package_name}")
  set(cdat_${system_package_name}_FOUND OFF)

  # Check if the system package is present
  find_package(${system_package_name})

  if(${system_package_name}_FOUND OR ${uc_sys_package}_FOUND)
    set(cdat_${system_package_name}_FOUND ON)
   endif()

  add_cdat_package("${package_name}" "" "${message}" ON OFF)
  set_property(CACHE CDAT_USE_SYSTEM_${uc_package} PROPERTY TYPE INTERNAL)

  if(NOT "${dependencies}" STREQUAL "")
    cmake_dependent_option(CDAT_BUILD_${uc_package} "${message}" ON "${dependencies}" OFF)
    cmake_dependent_option(CDAT_USE_SYSTEM_${uc_sys_package} "${message}" OFF "${dependencies}" OFF)
  else()
    option(CDAT_USE_SYSTEM_${uc_sys_package} "Use system ${system_package_name}" OFF)
  endif()

  if(CDAT_USE_SYSTEM_${uc_sys_package} AND NOT cdat_${system_package_name}_FOUND)
    message(FATAL_ERROR "[ERROR] ${system_package_name} is REQUIRED but not found")
  endif()

  # If both build and use system are ON, then build package wins
  if(CDAT_BUILD_${uc_package})
    set_property(CACHE CDAT_USE_SYSTEM_${uc_sys_package} PROPERTY VALUE OFF)
  endif()

  if(CDAT_USE_SYSTEM_${system_package_name})
    cdat_use_system_package("${package_name}" "${system_package_name}")
    set_property(CACHE CDAT_USE_SYSTEM_${uc_package} PROPERTY VALUE ON)

    if(EXISTS "${cdat_CMAKE_SOURCE_DIR}/cdat_modules_extra/${lc_sys_package}_sys.cmake")
      message("File exists")
      include(${lc_sys_package}_sys)
    endif()
  endif()

endmacro()

