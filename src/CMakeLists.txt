include_directories(.)

add_executable(
  range

  range.cpp
)
target_link_libraries(
  range

  ethsnarks_common
)
target_include_directories(
  range

  PUBLIC
  ${ZKLBS_DEPENDS_DIR}/ethsnarks/depends/libsnark
  ${ZKLBS_DEPENDS_DIR}/ethsnarks/depends/libsnark/depends/libfqfft
  # ${ZKLBS_DEPENDS_DIR}/ethsnarks/depends/libsnark/depends/libff
)

add_executable(
  poseidon

  poseidon.cpp
)
target_link_libraries(
  poseidon

  ethsnarks_common
)
target_include_directories(
  poseidon

  PUBLIC
  ${ZKLBS_DEPENDS_DIR}/ethsnarks/depends/libsnark
  ${ZKLBS_DEPENDS_DIR}/ethsnarks/depends/libsnark/depends/libfqfft
)

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