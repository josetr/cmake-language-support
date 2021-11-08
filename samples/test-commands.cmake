#CTest Commands

ctest_build(
    NUMBER_WARNINGS ctest_build_NUMBER_WARNINGS_OUT_VAR
    RETURN_VALUE ctest_build_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_build_CAPTURE_CMAKE_ERROR_OUT_VAR)
ctest_configure(
    RETURN_VALUE ctest_configure_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_configure_CAPTURE_CMAKE_ERROR_OUT_VAR)
ctest_coverage(
    RETURN_VALUE ctest_coverage_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_coverage_CAPTURE_CMAKE_ERROR_OUT_VAR)
ctest_memcheck(
    DEFECT_COUNT ctest_memcheck_DEFECT_COUNT_OUT_VAR)
ctest_run_script(
    RETURN_VALUE ctest_run_script_RETURN_VALUE_OUT_VAR)
ctest_submit(
    RETURN_VALUE ctest_submit_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_submit_CAPTURE_CMAKE_ERROR_OUT_VAR)
ctest_test(
    RETURN_VALUE ctest_test_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_test_CAPTURE_CMAKE_ERROR_OUT_VAR)
ctest_update(
    RETURN_VALUE ctest_update_RETURN_VALUE_OUT_VAR
    CAPTURE_CMAKE_ERROR ctest_update_CAPTURE_CMAKE_ERROR_OUT_VAR)
ctest_upload(
    CAPTURE_CMAKE_ERROR ctest_upload_CAPTURE_CMAKE_ERROR_OUT_VAR)
