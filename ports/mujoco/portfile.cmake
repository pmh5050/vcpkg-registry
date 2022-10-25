vcpkg_from_github(
    OUR_SOURCE_PATH OUR_SOURCE_PATH
    REPO pmh5050/mujoco
    REF b0fdaa75ed713a572a150b572d9d90c4cb87ec07
    SHA512 b0fdaa75ed713a572a150b572d9d90c4cb87ec07
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