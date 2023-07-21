include_directories(.)

add_executable(
  circuit

  circuit.cpp
)
target_link_libraries(
  circuit

  ethsnarks_common
)
target_include_directories(
  circuit

  PUBLIC
  ${ZKLBS_DEPENDS_DIR}/ethsnarks/depends/libsnark
  ${ZKLBS_DEPENDS_DIR}/ethsnarks/depends/libsnark/depends/libfqfft
)