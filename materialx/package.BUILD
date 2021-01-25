load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

cc_library(
    name = "MaterialXCore",
    srcs = glob(["source/MaterialXCore/*.cpp"]),
    hdrs = glob(["source/MaterialXCore/*.h"]),
    includes = ["source/"],
    local_defines = [
        "MATERIALX_MAJOR_VERSION=1",
        "MATERIALX_MINOR_VERSION=37",
        "MATERIALX_BUILD_VERSION=4",
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "MaterialXFormat",
    srcs = glob([
        "source/MaterialXFormat/*.cpp",
        "source/MaterialXFormat/PugiXML/*.cpp",
        "source/MaterialXFormat/PugiXML/*.hpp",
    ]),
    hdrs = glob([
        "source/MaterialXFormat/*.h",
    ]),
    includes = ["source/"],
    visibility = ["//visibility:public"],
    deps = [":MaterialXCore"],
    data = glob([
        "libraries/**"
    ], exclude = [
        "README.md",
        "libraries/**/genglsl/**",
        "libraries/**/genosl/**",
    ]),
)

cc_library(
    name = "MaterialXGenShader",
    srcs = glob([
        "source/MaterialXGenShader/*.cpp",
        "source/MaterialXGenShader/Nodes/*.cpp",
    ]),
    hdrs = glob([
        "source/MaterialXGenShader/*.h",
        "source/MaterialXGenShader/Nodes/*.h",
    ]),
    includes = ["source/"],
    visibility = ["//visibility:public"],
    deps = [
        ":MaterialXCore",
        ":MaterialXFormat",
    ],
)

cc_library(
    name = "MaterialXGenGlsl",
    srcs = glob([
        "source/MaterialXGenGlsl/*.cpp",
        "source/MaterialXGenGlsl/Nodes/*.cpp",
    ]),
    hdrs = glob([
        "source/MaterialXGenGlsl/*.h",
        "source/MaterialXGenGlsl/Nodes/*.h",
    ]),
    includes = ["source/"],
    visibility = ["//visibility:public"],
    deps = [
        ":MaterialXCore",
        ":MaterialXGenShader",
    ],
    data = glob([
        "libraries/**/genglsl/**",
    ]),
)

cc_library(
    name = "MaterialXGenOsl",
    srcs = glob([
        "source/MaterialXGenOsl/*.cpp",
        "source/MaterialXGenOsl/Nodes/*.cpp",
    ]),
    hdrs = glob([
        "source/MaterialXGenOsl/*.h",
        "source/MaterialXGenOsl/Nodes/*.h",
    ]),
    includes = ["source/"],
    visibility = ["//visibility:public"],
    deps = [
        ":MaterialXCore",
        ":MaterialXGenShader",
    ],
    data = glob([
        "libraries/**/genosl/**",
    ]),
)

cc_library(
    name = "MaterialXRender",
    srcs = glob([
        "source/MaterialXRender/*.cpp",
    ]),
    hdrs = glob([
        "source/MaterialXRender/*.h",
    ]),
    includes = ["source/"],
    deps = [
        ":MaterialXCore",
        ":MaterialXGenShader",
        "@openimageio//:OpenImageIO",
    ],
)

cc_library(
    name = "MaterialXRenderHw",
    srcs = glob([
        "source/MaterialXRenderHw/*.cpp",
    ]),
    hdrs = glob([
        "source/MaterialXRenderHw/*.h",
    ]),
    includes = ["source/"],
    deps = [
        ":MaterialXCore",
        ":MaterialXRender",
    ],
)

cc_library(
    name = "MaterialXRenderGlsl",
    srcs = glob([
        "source/MaterialXRenderGlsl/*.cpp",
        "source/MaterialXRenderGlsl/External/GLew/*.cpp",
        "source/MaterialXRenderGlsl/External/GLew/*.h",
    ]),
    hdrs = glob([
        "source/MaterialXRenderGlsl/*.h",
    ]),
    includes = ["source/"],
    deps = [
        ":MaterialXCore",
        ":MaterialXRender",
        ":MaterialXRenderHw",
    ],
)

cc_library(
    name = "MaterialXRenderOsl",
    srcs = glob([
        "source/MaterialXRenderOsl/*.cpp",
    ]),
    hdrs = glob([
        "source/MaterialXRenderOsl/*.h",
    ]),
    includes = ["source/"],
    deps = [
        ":MaterialXCore",
        ":MaterialXRender",
        ":MaterialXRenderHw",
    ],
)

cc_binary(
    name = "MaterialXView",
    srcs = glob([
        "source/MaterialXView/*.cpp",
        "source/MaterialXView/*.h",
        "source/MaterialXView/nanogui/*.cpp",
        "source/MaterialXView/nanogui/*.h",
    ]),
    includes = [
        "source/",
        "source/MaterialXView/",
    ],
    deps = [
        ":MaterialXCore",
        ":MaterialXGenGlsl",
        ":MaterialXRenderGlsl",
        "@nanogui",
    ],
    data = glob([
        "resources/**",
    ], exclude = [
        "resources/CMakeLists.txt",
        "resources/README.md",
    ]),
)
