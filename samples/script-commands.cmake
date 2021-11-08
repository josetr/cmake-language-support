# Reading
file(READ filename FILE_READ_VAR)
file(STRINGS filename FILE_STRINGS_VAR)
file(TIMESTAMP filename FILE_TIMESTAMP_VAR)

# Filesystem
file(GLOB FILE_GLOB_VAR)
file(GLOB_RECURSE FILE_GLOB_RECURSE_VAR)
file(SIZE filename FILE_SIZE_VAR)
file(READ_SYMLINK linkname FILE_READ_SYMLINK_VAR)

# Path Conversion
file(REAL_PATH path FILE_REAL_PATH_PATH)
file(RELATIVE_PATH FILE_RELATIVE_PATH_VAR)
file(TO_CMAKE_PATH path FILE_TO_CMAKE_PATH_VAR)
file(TO_NATIVE_PATH path FILE_TO_NATIVE_PATH_VAR)

message("math")
math(EXPR math_OUT_VAR "5 * 6 + 7")
message(${math_OUT_VAR})

message("Search and Replace")

string(FIND string var string_FIND_OUT_VAR)
string(REPLACE string var string_REPLACE_OUT_VAR input)
message(${string_FIND_OUT_VAR})
message(${string_REPLACE_OUT_VAR})

message("Regular Expressions")

string(REGEX MATCH ege string_REGEX_MATCH_OUT_VAR regex)
string(REGEX MATCHALL ege string_REGEX_MATCHALL_OUT_VAR regex)
string(REGEX REPLACE regex var string_REGEX_REPLACE_OUT_VAR input)

message(${string_REGEX_MATCH_OUT_VAR})
message(${string_REGEX_MATCHALL_OUT_VAR})
message(${string_REGEX_REPLACE_OUT_VAR})

message("Manipulation")
string(APPEND string_APPEND_OUT_VAR input)
string(PREPEND string_PREPEND_OUT_VAR a)
string(CONCAT string_CONCAT_OUT_VAR a b)
string(TOLOWER STRING string_TOLOWER_OUT_VAR)
string(TOUPPER string string_TOUPPER_OUT_VAR)
string(LENGTH string string_LENGTH_OUT_VAR)
string(SUBSTRING string 0 3 string_SUBSTRING_OUT_VAR)
string(STRIP string string_STRIP_OUT_VAR)
string(GENEX_STRIP string string_GENEX_STRIP_OUT_VAR)

message(${string_PREPEND_OUT_VAR})
message(${string_CONCAT_OUT_VAR})
message(${string_JOIN_OUT_VAR})
message(${string_TOUPPER_OUT_VAR})
message(${string_SUBSTRING_OUT_VAR})
message(${string_STRIP_OUT_VAR})
message(${string_GENEX_STRIP_OUT_VAR})
message(${string_REPEAT_OUT_VAR})

message("Comparison")

string(COMPARE LESS string1 string2 string_COMPARE_LESS_OUT_VAR)
string(COMPARE GREATER string1 string2 string_COMPARE_GREATER_OUT_VAR)
string(COMPARE EQUAL string1 string2 string_COMPARE_EQUAL_OUT_VAR)
string(COMPARE NOTEQUAL string1 string2 string_COMPARE_NOTEQUAL_OUT_VAR)
string(COMPARE LESS_EQUAL string1 string2 string_COMPARE_LESS_EQUAL_OUT_VAR)
string(COMPARE GREATER_EQUAL string1 string2 string_COMPARE_GREATER_EQUAL_OUT_VAR)

message(${string_COMPARE_LESS_OUT_VAR})
message(${string_COMPARE_GREATER_OUT_VAR})
message(${string_COMPARE_EQUAL_OUT_VAR})
message(${string_COMPARE_NOTEQUAL_OUT_VAR})
message(${string_COMPARE_LESS_EQUAL_OUT_VAR})
message(${string_COMPARE_GREATER_EQUAL_OUT_VAR})

message("Hashing")

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

message(${string_MD5_OUT_VAR})
message(${string_SHA1_OUT_VAR})
message(${string_SHA224_OUT_VAR})
message(${string_SHA256_OUT_VAR})
message(${string_SHA384_OUT_VAR})
message(${string_SHA512_OUT_VAR})
message(${string_SHA3_224_OUT_VAR})
message(${string_SHA3_256_OUT_VAR})
message(${string_SHA3_384_OUT_VAR})
message(${string_SHA3_512_OUT_VAR})

message("Generation")

string(ASCII 49 50 string_ASCII_OUT_VAR)
string(HEX A string_HEX_OUT_VAR)
string(CONFIGURE string string_CONFIGURE_OUT_VAR)
string(MAKE_C_IDENTIFIER string string_MAKE_C_IDENTIFIER_OUT_VAR)
string(RANDOM LENGTH 5 ALPHABET ABCDE string_RANDOM_OUT_VAR)
string(TIMESTAMP string_TIMESTAMP_OUT_VAR)
string(UUID string_UUID_OUT_VAR NAMESPACE 6ba7b811-9dad-11d1-80b4-00c04fd430c8 TYPE MD5)

message(${string_ASCII_OUT_VAR})
message(${string_HEX_OUT_VAR})
message(${string_CONFIGURE_OUT_VAR})
message(${string_MAKE_C_IDENTIFIER_OUT_VAR})
message(${string_RANDOM_OUT_VAR})
message(${string_TIMESTAMP_OUT_VAR})
message(${string_UUID_OUT_VAR})

message("list: Reading")

set(list "1;2;3;4;5")
list(LENGTH list outvar)
list(JOIN list -- list_JOIN_OUT_VAR)
list(SUBLIST list 1 3 list_SUBLIST_OUT_VAR)
message(${list_JOIN_OUT_VAR})
message(${list_SUBLIST_OUT_VAR})

message("list: Search")

list(FIND list 5 list_FIND_OUT_VAR)
message(${list_FIND_OUT_VAR})

message("list: Modification")
list(APPEND list 6)
list(FILTER list EXCLUDE REGEX "wASDASD")
list(INSERT list 0 element)
list(POP_BACK list list_POP_BACK_OUT_VAR list_POP_BACK_2_OUT_VAR)
list(POP_FRONT list list_POP_FRONT_OUT_VAR list_POP_FRONT_2_OUT_VAR)
list(PREPEND list)
list(REMOVE_ITEM list)
list(REMOVE_AT list 0)
list(REMOVE_DUPLICATES list)
list(TRANSFORM list APPEND a OUTPUT_VARIABLE list_TRANSFORM_OUT_VAR)
message(${list_POP_BACK_OUT_VAR})
message(${list_POP_FRONT_OUT_VAR})
message(${list_TRANSFORM_OUT_VAR})

message("list: Ordering")
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

cmake_host_system_information(RESULT cmake_host_system_information_OUT_VAR QUERY NUMBER_OF_LOGICAL_CORES)
message(${cmake_host_system_information_OUT_VAR})

cmake_policy(SET CMP0000 NEW)
cmake_policy(GET CMP0000 cmake_policy_OUT_VAR)
message(${cmake_policy_OUT_VAR})

execute_process(COMMAND "cmake" WORKING_DIRECTORY dir
  RESULT_VARIABLE execute_process_RESULT_VARIABLE
  RESULTS_VARIABLE execute_process_RESULTS_VARIABLE
  OUTPUT_VARIABLE execute_process_OUTPUT_VARIABLE
  ERROR_VARIABLE execute_process_ERROR_VARIABLE)
message(${execute_process_RESULT_VARIABLE})
message(${execute_process_RESULTS_VARIABLE})

get_cmake_property(get_cmake_property_OUT_VAR ALLOW_DUPLICATE_CUSTOM_TARGETS)
message(${get_cmake_property_OUT_VAR})

get_filename_component(get_filename_component_OUT_VAR "cmake.exe" EXT)
message(${get_filename_component_OUT_VAR})

get_property(get_property_result GLOBAL PROPERTY ALLOW_DUPLICATE_CUSTOM_TARGETS)
get_directory_property(get_directory_property_OUT_VAR ADDITIONAL_CLEAN_FILES)
include(empty.cmake RESULT_VARIABLE include_OUT_VAR)

option(option_OUT_VAR "help_text")
message(${option_OUT_VAR})

separate_arguments(separate_arguments_OUT_VAR WINDOWS_COMMAND "1 2")
message(${separate_arguments_OUT_VAR})

set(set_OUT_VAR 0)
message(${set_OUT_VAR})

set_property(CACHE PROPERTY ADVANCED)

site_name(site_name_OUT_VAR)
message(${site_name_OUT_VAR})

unset(set_OUT_VAR)
variable_watch(var command)

return()