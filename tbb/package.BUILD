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

genrule(
    name = "generate_version_string.ver",
    outs = ["version_string.ver"],
    cmd_bash = select({
        "linux": "sh $(location build/version_info_linux.sh) > $(@)",
        "osx": "sh $(location build/version_info_macos.sh) > $(@)",
        "//conditions:default": "",
    }),
    cmd_bat = "cscript.exe /nologo /E:jscript $(location build/version_info_windows.js) cl windows bazel > $(@)",
    local = True,
    toolchains = ["@bazel_tools//tools/cpp:current_cc_toolchain"],
    tools = glob(["build/version_info_*"]),
)

cc_library(
    name = "tbb",
    srcs = glob(
        [
            "src/tbb/**/*.cpp",
            "src/tbb/**/*.h",
            "src/rml/src/**/*.cpp",
            "src/rml/include/**/*.h",
            "src/rml/server/**/*.cpp",
            "src/rml/server/**/*.h",
            "src/rml/client/**/*.cpp",
            "src/rml/client/**/*.h",
        ],
        exclude = [
            "src/tbb/tbb_bind.cpp",
            "src/rml/server/rml_server.cpp",
        ],
    ) + select({
        "windows": glob(["src/tbb/intel64-masm/*.asm"]),
        "//conditions:default": [],
    }),
    hdrs = glob([
        "include/serial/**",
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
        ],
    }),
    defines = ["__TBB_NO_IMPLICIT_LINKAGE"],
    includes = [
        "include",
        "src",
        "src/rml/include",
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
        "//conditions:default": [
            "__TBB_BUILD=1",
            "USE_PTHREAD",
        ],  #, "DO_ITT_NOTIFY"],
    }) + ["TBB_SUPPRESS_DEPRECATED_MESSAGES=1"],
    textual_hdrs = [
        "src/tbb/dynamic_link.cpp",
        ":version_string.ver",
    ],
    visibility = ["//visibility:public"],
)
