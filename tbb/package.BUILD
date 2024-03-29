load("@rules_cc//cc:defs.bzl", "cc_library")

config_setting(
    name = "windows",
    constraint_values = [
        "@platforms//os:windows",
    ],
)

config_setting(
    name = "linux",
    constraint_values = [
        "@platforms//os:linux",
    ],
)

config_setting(
    name = "osx",
    constraint_values = [
        "@platforms//os:osx",
    ],
)

cc_library(
    name = "tbb",
    srcs = glob(
        [
            "src/tbb/**/*.cpp",
            "src/tbb/**/*.h",
        ],
    ) + select({
        "//conditions:default": [],
    }),
    hdrs = glob([
        "include/oneapi/**",
        "include/tbb/**",
    ]),
    copts = select({
        "windows": [],
        "osx": [
            "-pthread",
            "-fPIC",
            "-mrtm",
        ],
        "//conditions:default": [
            "-pthread",
            "-fPIC",
            "-flifetime-dse=1",
            "-mrtm",
            "-mwaitpkg",
        ],
    }),
    defines = ["__TBB_NO_IMPLICIT_LINKAGE"],
    includes = [
        "include",
        "include/oneapi",
    ],
    linkopts = select({
        "windows": [],
        "osx": [
            "-pthread",
            "-rdynamic",
        ],
        "//conditions:default": [
            "-ldl",
            "-pthread",
            "-rdynamic",
        ],
    }),
    local_defines = select({
        "windows": ["USE_WINTHREAD=1"],
        "osx": ["_XOPEN_SOURCE"],
        "//conditions:default": ["USE_PTHREAD"],
    }) + [
        "__TBB_BUILD=1",
        "TBB_SUPPRESS_DEPRECATED_MESSAGES=1",
    ],
    textual_hdrs = [
        "src/tbb/dynamic_link.cpp",
    ],
    visibility = ["//visibility:public"],
)
