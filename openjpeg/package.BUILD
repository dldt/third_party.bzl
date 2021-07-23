load("@rules_cc//cc:defs.bzl", "cc_library")
load("@third_party//:defs.bzl", "cmake_configure_file")

CMAKE_DEFINES = [
    # opjconfig
    "OPENJPEG_VERSION_MAJOR=2",
    "OPENJPEG_VERSION_MINOR=4",
    "OPENJPEG_VERSION_BUILD=0",
    # opjconfigprivate
    "OPJ_HAVE_INTTYPES_H=1",
    "PACKAGE_VERSION=2.4.0",
    "OPJ_HAVE_ALIGNED_ALLOC",
    "OPJ_HAVE_MALLOC_H=1",
    "OPJ_HAVE_STDINT_H=1",
]

CMAKE_UNDEFS = [
# opjconfigprivate
    "HAVE_MEMORY_H",
    "HAVE_STDLIB_H",
    "HAVE_STRINGS_H",
    "HAVE_STRING_H",
    "HAVE_SYS_STAT_H",
    "HAVE_SYS_TYPES_H",
    "HAVE_UNISTD_H",

    "_LARGEFILE_SOURCE",
    "_LARGE_FILES",
    "_FILE_OFFSET_BITS",
    "OPJ_HAVE_FSEEKO",
    "OPJ_HAVE__ALIGNED_MALLOC=1",
    "OPJ_HAVE_MEMALIGN",
    "OPJ_HAVE_POSIX_MEMALIGN",
]

cmake_configure_file(
    name = "opjconfigprivate",
    src = "src/lib/openjp2/opj_config_private.h.cmake.in",
    out = "src/lib/openjp2/opj_config_private.h",
    defines = CMAKE_DEFINES,
    undefines = CMAKE_UNDEFS,
)

cmake_configure_file(
    name = "opjconfig",
    src = "src/lib/openjp2/opj_config.h.cmake.in",
    out = "src/lib/openjp2/opj_config.h",
    defines = CMAKE_DEFINES,
    undefines = CMAKE_UNDEFS,
)

cc_library(
    name = "openjp2",
    srcs = glob([
        "src/lib/openjp2/*.c",
    ], exclude = [
        "src/lib/openjp2/test_*",
        "src/lib/openjp2/bench_*",
    ]),
    hdrs = glob([
        "src/lib/openjp2/*.h",
    ]) + [":opjconfigprivate", ":opjconfig"],
    includes = ["src/lib/openjp2/"],
    # defines = ["OPJ_STATIC"],
    local_defines = ["USE_JPIP"],
    visibility = ["//visibility:public"],
)
