vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO pmh5050/mujoco
    REF b0fdaa75ed713a572a150b572d9d90c4cb87ec07
    SHA512 3ea6b85f92dc1d1b7e8920d85ab3c622cfea99ab6b60edfd5b4f985f00db868312c9a9e62a6270c82130314179795a50d5f536efefb769484909d2a44069ff30
    HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)