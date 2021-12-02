cmake_host_system_information(RESULT cmake_host_system_information_OUT_VAR QUERY NUMBER_OF_LOGICAL_CORES)
cmake_language(CALL command args...)
cmake_language(EVAL code code...)
cmake_language(DEFER options...)

# Decomposition
cmake_path(GET path-var ROOT_NAME cmake_path_ROOT_NAME_RESULT)
cmake_path(GET path-var ROOT_DIRECTORY cmake_path_ROOT_DIRECTORY_RESULT)
cmake_path(GET path-var ROOT_PATH cmake_path_ROOT_PATH_RESULT)
cmake_path(GET path-var FILENAME cmake_path_FILENAME_RESULT)
cmake_path(GET path-var EXTENSION LAST_ONLY cmake_path_EXTENSION_RESULT)
cmake_path(GET path-var EXTENSION cmake_path_EXTENSION_RESULT2)
cmake_path(GET path-var STEM LAST_ONLY cmake_path_STEM_RESULT)
cmake_path(GET path-var RELATIVE_PART cmake_path_RELATIVE_PART_RESULT)
cmake_path(GET path-var PARENT_PATH cmake_path_PARENT_PATH_RESULT)

# Query
cmake_path(HAS_ROOT_NAME path-var cmake_path_HAS_ROOT_NAME_RESULT)
cmake_path(HAS_ROOT_DIRECTORY path-var cmake_path_HAS_ROOT_DIRECTORY_RESULT)
cmake_path(HAS_ROOT_PATH path-var cmake_path_HAS_ROOT_PATH_RESULT)
cmake_path(HAS_FILENAME path-var cmake_path_HAS_FILENAME_RESULT)
cmake_path(HAS_EXTENSION path-var cmake_path_HAS_EXTENSION_RESULT)
cmake_path(HAS_STEM path-var cmake_path_HAS_STEM_RESULT)
cmake_path(HAS_RELATIVE_PART path-var cmake_path_HAS_RELATIVE_PART_RESULT)
cmake_path(HAS_PARENT_PATH path-var cmake_path_HAS_PARENT_PATH_RESULT)
cmake_path(IS_ABSOLUTE path-var cmake_path_IS_ABSOLUTE_RESULT)
cmake_path(IS_RELATIVE path-var cmake_path_IS_RELATIVE_RESULT)
cmake_path(IS_PREFIX path-var input NORMALIZE cmake_path_IS_PREFIX_RESULT)
cmake_path(COMPARE input1 EQUAL input2 cmake_path_COMPARE_RESULT)
cmake_path(COMPARE input1 NOT_EQUAL input2 cmake_path_COMPARE_RESULT)

# Modification
cmake_path(SET path-var NORMALIZE input)
cmake_path(APPEND path-var input input2... OUTPUT_VARIABLE cmake_path_APPEND_OUTPUT_VARIABLE_RESULT)
cmake_path(APPEND_STRING path-var input input2... OUTPUT_VARIABLE cmake_path_APPEND_STRING_OUTPUT_VARIABLE_RESULT)
cmake_path(REMOVE_FILENAME path-var OUTPUT_VARIABLE cmake_path_REMOVE_FILENAME_OUTPUT_VARIABLE_RESULT)
cmake_path(REPLACE_FILENAME path-var input OUTPUT_VARIABLE cmake_path_REPLACE_FILENAME_OUTPUT_VARIABLE_RESULT)
cmake_path(REMOVE_EXTENSION path-var LAST_ONLY OUTPUT_VARIABLE cmake_path_REMOVE_EXTENSION_OUTPUT_VARIABLE_RESULT)
cmake_path(REPLACE_EXTENSION path-var LAST_ONLY input OUTPUT_VARIABLE cmake_path_REPLACE_EXTENSION_OUTPUT_VARIABLE_RESULT)

# Generation
cmake_path(NORMAL_PATH path-var OUTPUT_VARIABLE cmake_path_NORMAL_PATH_RESULT)
cmake_path(RELATIVE_PATH path-var BASE_DIRECTORY input OUTPUT_VARIABLE cmake_path_RELATIVE_PATH_RESULT)
cmake_path(ABSOLUTE_PATH path-var BASE_DIRECTORY input NORMALIZE OUTPUT_VARIABLE cmake_path_ABSOLUTE_PATH_RESULT)

# Native Conversion
cmake_path(NATIVE_PATH path-var NORMALIZE cmake_path_NATIVE_PATH_RESULT)
cmake_path(CONVERT input TO_CMAKE_PATH_LIST cmake_path_CONVERT_TO_CMAKE_PATH_LIST_RESULT NORMALIZE)
cmake_path(CONVERT input TO_NATIVE_PATH_LIST cmake_path_CONVERT_TO_NATIVE_PATH_LIST_RESULT NORMALIZE)

# Hashing
cmake_path(HASH path-var cmake_path_HASH_RESULT)

cmake_policy(SET CMP0000 NEW)
cmake_policy(GET CMP0000 cmake_policy_OUT_VAR)
cmake_minimum_required(VERSION 1.0..2.0 FATAL_ERROR)
configure_file(input output)

execute_process(COMMAND "cmake" WORKING_DIRECTORY dir
  RESULT_VARIABLE execute_process_RESULT_VARIABLE
  RESULTS_VARIABLE execute_process_RESULTS_VARIABLE
  OUTPUT_VARIABLE execute_process_OUTPUT_VARIABLE
  ERROR_VARIABLE execute_process_ERROR_VARIABLE)

get_cmake_property(get_cmake_property_OUT_VAR ALLOW_DUPLICATE_CUSTOM_TARGETS)
get_filename_component(get_filename_component_OUT_VAR "cmake.exe" EXT)
get_property(get_property_result GLOBAL PROPERTY ALLOW_DUPLICATE_CUSTOM_TARGETS)
get_directory_property(get_directory_property_OUT_VAR ADDITIONAL_CLEAN_FILES)

# Reading
file(READ filename FILE_READ_VAR)
file(STRINGS filename FILE_STRINGS_VAR)
file(TIMESTAMP filename FILE_TIMESTAMP_VAR)

# Writing
file(WRITE filename content...)
file(APPEND filename content...)
file(TOUCH files...)
file(TOUCH_NOCREATE files...)

# Filesystem
file(RENAME oldname newname)
file(REMOVE files...)
file(REMOVE_RECURSE files...)
file(GLOB FILE_GLOB_VAR)
file(GLOB_RECURSE FILE_GLOB_RECURSE_VAR)
file(SIZE filename FILE_SIZE_VAR)
file(READ_SYMLINK linkname FILE_READ_SYMLINK_VAR)

# Path Conversion
file(REAL_PATH path FILE_REAL_PATH_PATH)
file(RELATIVE_PATH FILE_RELATIVE_PATH_VAR)
file(TO_CMAKE_PATH path FILE_TO_CMAKE_PATH_VAR)
file(TO_NATIVE_PATH path FILE_TO_NATIVE_PATH_VAR)

# Transfer
file(DOWNLOAD url file options...)
file(UPLOAD file url options...)

# Locking
file(LOCK path RESULT_VARIABLE file_RESULT_VARIABLE_VAR)

# Math
math(EXPR math_OUT_VAR "5 * 6 + 7")

# Search and Replace
string(FIND string var string_FIND_OUT_VAR)
string(REPLACE string var string_REPLACE_OUT_VAR input)

# Regular Expressions
string(REGEX MATCH ege string_REGEX_MATCH_OUT_VAR regex)
string(REGEX MATCHALL ege string_REGEX_MATCHALL_OUT_VAR regex)
string(REGEX REPLACE regex var string_REGEX_REPLACE_OUT_VAR input)

# Manipulation
string(APPEND string_APPEND_OUT_VAR input)
string(PREPEND string_PREPEND_OUT_VAR a)
string(CONCAT string_CONCAT_OUT_VAR a b)
string(TOLOWER STRING string_TOLOWER_OUT_VAR)
string(TOUPPER string string_TOUPPER_OUT_VAR)
string(LENGTH string string_LENGTH_OUT_VAR)
string(SUBSTRING string 0 3 string_SUBSTRING_OUT_VAR)
string(STRIP string string_STRIP_OUT_VAR)
string(GENEX_STRIP string string_GENEX_STRIP_OUT_VAR)

# Comparison
string(COMPARE LESS string1 string2 string_COMPARE_LESS_OUT_VAR)
string(COMPARE GREATER string1 string2 string_COMPARE_GREATER_OUT_VAR)
string(COMPARE EQUAL string1 string2 string_COMPARE_EQUAL_OUT_VAR)
string(COMPARE NOTEQUAL string1 string2 string_COMPARE_NOTEQUAL_OUT_VAR)
string(COMPARE LESS_EQUAL string1 string2 string_COMPARE_LESS_EQUAL_OUT_VAR)
string(COMPARE GREATER_EQUAL string1 string2 string_COMPARE_GREATER_EQUAL_OUT_VAR)

# Hashing
string(MD5 string_MD5_OUT_VAR input)
string(SHA1 string_SHA1_OUT_VAR input)
string(SHA224 string_SHA224_OUT_VAR input)
string(SHA256 string_SHA256_OUT_VAR input)
string(SHA384 string_SHA384_OUT_VAR input)
string(SHA512 string_SHA512_OUT_VAR input)
string(SHA3_224 string_SHA3_224_OUT_VAR input)
string(SHA3_256 string_SHA3_256_OUT_VAR input)
string(SHA3_384 string_SHA3_384_OUT_VAR input)
string(SHA3_512 string_SHA3_512_OUT_VAR input)

# Generation
string(ASCII 49 50 string_ASCII_OUT_VAR)
string(HEX A string_HEX_OUT_VAR)
string(CONFIGURE string string_CONFIGURE_OUT_VAR)
string(MAKE_C_IDENTIFIER string string_MAKE_C_IDENTIFIER_OUT_VAR)
string(RANDOM LENGTH 5 ALPHABET ABCDE string_RANDOM_OUT_VAR)
string(TIMESTAMP string_TIMESTAMP_OUT_VAR)
string(UUID string_UUID_OUT_VAR NAMESPACE 6ba7b811-9dad-11d1-80b4-00c04fd430c8 TYPE MD5)
string(JSON string_JSON_OUT_VAR ERROR_VARIABLE string_JSON_RESULT_VARIABLE)

# Reading
set(list "1;2;3;4;5")
list(LENGTH list outvar)
list(JOIN list -- list_JOIN_OUT_VAR)
list(SUBLIST list 1 3 list_SUBLIST_OUT_VAR)

# Search
list(FIND list 5 list_FIND_OUT_VAR)

# Modification
list(APPEND list 6)
list(FILTER list EXCLUDE REGEX "REGEX")
list(INSERT list 0 element)
list(POP_BACK list list_POP_BACK_OUT_VAR list_POP_BACK_2_OUT_VAR)
list(POP_FRONT list list_POP_FRONT_OUT_VAR list_POP_FRONT_2_OUT_VAR)
list(PREPEND list)
list(REMOVE_ITEM list)
list(REMOVE_AT list 0)
list(REMOVE_DUPLICATES list)
list(TRANSFORM list APPEND a OUTPUT_VARIABLE list_TRANSFORM_OUT_VAR)

# Ordering
list(REVERSE list)
list(SORT list)

# Custom commands

# Prints my function
function(myfunction)
  message("my function")
endfunction()

# Prints my macro
macro(mymacro)
  message("my macro")
endmacro()

myfunction()
mymacro()

foreach(LOOP_VAR 0 1 2 3)
  if(LOOP_VAR EQUAL 0)
    message("if")
  elseif(LOOP_VAR EQUAL 1)
    message("elseif")
  else()
    message("else")

    if(LOOP_VAR EQUAL 2)
      message("nested-if")
    endif()
  endif()

  message(${LOOP_VAR})
  continue()
endforeach()

while(0)
  break()
endWhile()

set(REFERENCE "REF")

include(empty.cmake RESULT_VARIABLE include_OUT_VAR)
option(option_OUT_VAR "help_text")
separate_arguments(separate_arguments_OUT_VAR WINDOWS_COMMAND "1 2")
set(set_OUT_VAR 0)
set_property(CACHE PROPERTY ADVANCED)
site_name(site_name_OUT_VAR)
unset(set_OUT_VAR)
variable_watch(var command)

message(
  UnquotedArgument
  "QuotedArgument"
  [==[
    Bracket
    Argument]==]
  ${REFERENCE}
  $<GENERATOR_EXPR:V_${REFERENCE}_AL>
  CMP1000
  1400450234 # NUMBER
  450345034051400450234 # NUMBER
  5.1 # VERSION
  5. # VERSION
  YES NO ON OFF TRUE FALSE # BOOLEAN LITERAL
)

if(ENABLE_PROJECT_COMMANDS)
  # Project Commands
  add_custom_target(custom_target WORKING_DIRECTORY dir SOURCES src1 src2)
  add_custom_target(dependency WORKING_DIRECTORY dir)
  add_custom_command(TARGET target WORKING_DIRECTORY dir)
  add_custom_target(add_custom_target_TARGET WORKING_DIRECTORY dir)
  add_dependencies(custom_target dependency bad_dependency ...)
  add_executable(add_executable_TARGET WIN32 file1 file2)
  add_library(add_library_TARGET)
  add_subdirectory(dir dir? EXCLUDE_FROM_ALL)
  add_test(NAME add_test_TARGET WORKING_DIRECTORY dir)
  aux_source_directory(dir aux_source_directory_OUT_VAR)
  build_command(variable CONFIGURATION config TARGET custom_target)
  get_source_file_property(get_source_file_property_OUT_VAR file)
  get_target_property(get_target_property_OUT_VAR custom_target)
  get_test_property(custom_target FOLDER get_test_property_OUT_VAR)
  set_target_properties(custom_target PROPERTIES FOLDER folder)
  install(TARGETS custom_target ...)
  install(DIRECTORY dir ...)
  install(FILES file file2 DIRECTORY dir EXCLUDE_FROM_ALL)
  target_compile_definitions(custom_target def)
  target_compile_features(custom_target cxx_std_20)
  target_compile_options(custom_target option)
  target_include_directories(custom_target SYSTEM BEFORE dir)
  target_link_directories(custom_target PUBLIC dir)
  target_link_libraries(custom_target PUBLIC lib)
  target_link_options(custom_target PUBLIC option PRIVATE option2)
  target_sources(custom_target src1 src2)
  try_compile(try_compile_OUT_VAR bindir srcdir projectname OUTPUT_VARIABLE try_compile_OUTPUT_VARIABLE_OUT_VAR)
  try_run(
    try_run_RESULT_OUT_VAR_1
    try_run_COMPILE_RESULT_OUT_VAR bindir srcfile
    COMPILE_OUTPUT_VARIABLE COMPILE_OUTPUT_VARIABLE_OUT_VAR
    RUN_OUTPUT_VARIABLE RUN_OUTPUT_VARIABLE_RESULT
    OUTPUT_VARIABLE OUTPUT_VARIABLE_OUT_VAR
    WORKING_DIRECTORY dir
  )
endif()

if(ENABLE_TEST_COMMANDS)
  # CTest Commands
  ctest_build(
    BUILD dir
    TARGET target
    NUMBER_WARNINGS ctest_build_NUMBER_WARNINGS_OUT_VAR
    RETURN_VALUE ctest_build_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_build_CAPTURE_CMAKE_ERROR_OUT_VAR)
  ctest_configure(
    BUILD dir
    SOURCE srcdir
    RETURN_VALUE ctest_configure_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_configure_CAPTURE_CMAKE_ERROR_OUT_VAR)
  ctest_coverage(
    BUILD dir
    RETURN_VALUE ctest_coverage_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_coverage_CAPTURE_CMAKE_ERROR_OUT_VAR)
  ctest_memcheck(
    BUILD dir
    DEFECT_COUNT ctest_memcheck_DEFECT_COUNT_OUT_VAR)
  ctest_run_script(
    NEW_PROCESS
    file file2
    RETURN_VALUE ctest_run_script_RETURN_VALUE_OUT_VAR)
  ctest_submit(
    FILES file
    RETURN_VALUE ctest_submit_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_submit_CAPTURE_CMAKE_ERROR_OUT_VAR)
  ctest_test(
    BUILD dir
    RESOURCE_SPEC_FILE file
    RETURN_VALUE ctest_test_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_test_CAPTURE_CMAKE_ERROR_OUT_VAR)
  ctest_update(
    SOURCE dir
    RETURN_VALUE ctest_update_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_update_CAPTURE_CMAKE_ERROR_OUT_VAR)
  ctest_upload(
    FILES file file2
    CAPTURE_CMAKE_ERROR ctest_upload_CAPTURE_CMAKE_ERROR_OUT_VAR)
endif()

return()
