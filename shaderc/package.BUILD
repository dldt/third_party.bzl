load("@rules_python//python:defs.bzl", "py_binary")
load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

cc_library(
    name = "libshaderc",
    srcs = glob(
        [
            "libshaderc/src/*.c",
            "libshaderc/src/*.cc",
            "libshaderc/src/*.h",
        ],
        exclude = ["libshaderc/src/*_test.*"],
    ),
    hdrs = glob([
        "libshaderc/include/shaderc/*.h",
        "libshaderc/include/shaderc/*.hpp",
    ]),
    strip_include_prefix = "libshaderc/include/",
    visibility = ["//visibility:public"],
    deps = [
        ":libshaderc_util",
        "@glslang",
    ],
)

cc_library(
    name = "libshaderc_util",
    srcs = glob(
        [
            "libshaderc_util/src/*.cc",
            "libshaderc_util/src/*.h",
        ],
        exclude = ["libshaderc_util/src/*_test.*"],
    ),
    hdrs = glob([
        "libshaderc_util/include/libshaderc_util/*.h",
        "libshaderc_util/include/libshaderc_util/*.inc",
    ]),
    strip_include_prefix = "libshaderc_util/include/",
    visibility = ["//visibility:public"],
    deps = [
        "@glslang",
        "@glslang//:SPIRV",
        "@spirv-headers//:spirv_cpp_headers",
        "@spirv-tools//:spirv_tools",
        "@spirv-tools//:spirv_tools_opt",
    ],
)

py_binary(
    name = "update_build_version",
    srcs = ["utils/update_build_version.py"],
)

genrule(
    name = "gen_build_version",
    srcs = [
        "CHANGES",
        "@spirv-tools//:CHANGES",
        "@glslang//:CHANGES.md",
    ],
    outs = ["build-version.inc"],
    cmd = "SOURCE_DATE_EPOCH=0 $(location update_build_version) $$(dirname $(location CHANGES)) $$(dirname $(location @spirv-tools//:CHANGES)) $$(dirname $(location @glslang//:CHANGES.md)) $(location build-version.inc)",
    tools = [":update_build_version"],
)

cc_library(
    name = "libglslc",
    srcs = glob(
        [
            "glslc/src/*.cc",
        ],
        exclude = ["glslc/src/*_test.*"],
    ) + [":build-version.inc"],
    hdrs = glob([
        "glslc/src/*.h",
    ]),
    deps = [
        ":libshaderc",
        "@spirv-tools//:spirv_tools_opt",
    ],
)

cc_binary(
    name = "glslc",
    srcs = ["glslc/src/main.cc"],
    deps = [":libglslc"],
)
