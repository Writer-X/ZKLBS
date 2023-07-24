include_directories(.)

add_executable(
  test_poseidonHash

  test_poseidonHash.cpp
)
target_link_libraries(
  test_poseidonHash

  ethsnarks_common
)
target_include_directories(
  test_poseidonHash

  PUBLIC
  ${ZKLBS_DEPENDS_DIR}/ethsnarks/depends/libsnark
  ${ZKLBS_DEPENDS_DIR}/ethsnarks/depends/libsnark/depends/libfqfft
)