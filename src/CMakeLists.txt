include_directories(.)

add_executable(
  range

  range.cpp
)
target_link_libraries(
  range

  snark
)
target_include_directories(
  range

  PUBLIC
  ${DEPENDS_DIR}/libsnark
  ${DEPENDS_DIR}/libsnark/depends/libfqfft
)