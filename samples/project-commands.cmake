#Project Commands

add_custom_target(custom_target WORKING_DIRECTORY dir)
add_custom_target(dependency WORKING_DIRECTORY dir)
add_custom_command(WORKING_DIRECTORY dir)
add_custom_target(add_custom_target_TARGET WORKING_DIRECTORY dir)
add_dependencies(custom_target dependency bad_dependency ...)
add_executable(add_executable_TARGET WIN32 file1 file2)
add_library(add_library_TARGET)
add_subdirectory(dir dir?)
add_test(NAME add_test_TARGET WORKING_DIRECTORY dir)
aux_source_directory(dir aux_source_directory_OUT_VAR)
build_command(variable CONFIGURATION config TARGET custom_target)
get_source_file_property(get_source_file_property_OUT_VAR file)
get_target_property(get_target_property_OUT_VAR custom_target)
get_test_property(custom_target FOLDER get_test_property_OUT_VAR)
set_target_properties(custom_target FOLDER folder)
install(TARGETS custom_target ... DIRECTORY dir ...)
target_compile_definitions(custom_target def)
target_compile_features(custom_target feature)
target_compile_options(custom_target option)
target_include_directories(custom_target SYSTEM BEFORE dir)
target_link_directories(custom_target PUBLIC dir)
target_link_libraries(custom_target PUBLIC lib)
target_link_options(custom_target PUBLIC option)
target_sources(custom_target src1 src2)
try_compile(try_compile_OUT_VAR bindir srcdir projectname OUTPUT_VARIABLE try_compile_OUTPUT_VARIABLE_OUT_VAR)
try_run(
  try_run_RESULT_OUT_VAR_1
  try_run_COMPILE_RESULT_OUT_VAR bindir srcfile
  COMPILE_OUTPUT_VARIABLE COMPILE_OUTPUT_VARIABLE_OUT_VAR
  RUN_OUTPUT_VARIABLE RUN_OUTPUT_VARIABLE_RESULT
  OUTPUT_VARIABLE OUTPUT_VARIABLE_OUT_VAR)
