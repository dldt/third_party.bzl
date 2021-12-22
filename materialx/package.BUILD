load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library", "objc_library")
load("@third_party//:defs.bzl", "cmake_configure_file")

CMAKE_DEFINES = [
    "MATERIALX_MAJOR_VERSION=1",
    "MATERIALX_MINOR_VERSION=38",
    "MATERIALX_BUILD_VERSION=3",
    "MATERIALX_NAMESPACE=MaterialX_v1_38_3",
]

CMAKE_UNDEFS = []

cmake_configure_file(
    name = "MaterialXCoreGenerated_h",
    src = "source/MaterialXCore/Generated.h.in",
    out = "source/MaterialXCore/Generated.h",
    defines = CMAKE_DEFINES,
    undefines = CMAKE_UNDEFS,
)

cc_library(
    name = "MaterialXCore",
    srcs = glob(["source/MaterialXCore/*.cpp"]),
    hdrs = glob(["source/MaterialXCore/*.h"]) + [":MaterialXCoreGenerated_h"],
    includes = ["source/"],
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
    data = glob(
        [
            "libraries/**",
        ],
        exclude = [
            "README.md",
            "libraries/**/genglsl/**",
            "libraries/**/genosl/**",
        ],
    ),
    includes = ["source/"],
    visibility = ["//visibility:public"],
    deps = [":MaterialXCore"],
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
    data = glob([
        "libraries/**/genglsl/**",
    ]),
    includes = ["source/"],
    visibility = ["//visibility:public"],
    deps = [
        ":MaterialXCore",
        ":MaterialXGenShader",
    ],
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
    data = glob([
        "libraries/**/genosl/**",
    ]),
    includes = ["source/"],
    visibility = ["//visibility:public"],
    deps = [
        ":MaterialXCore",
        ":MaterialXGenShader",
    ],
)

cc_library(
    name = "MaterialXGenMdl",
    srcs = glob([
        "source/MaterialXGenMdl/*.cpp",
        "source/MaterialXGenMdl/Nodes/*.cpp",
    ]),
    hdrs = glob([
        "source/MaterialXGenMdl/*.h",
        "source/MaterialXGenMdl/Nodes/*.h",
    ]),
    data = glob([
        "libraries/**/genmdl/**",
    ]),
    includes = ["source/"],
    visibility = ["//visibility:public"],
    deps = [
        ":MaterialXCore",
        ":MaterialXGenShader",
    ],
)

cc_library(
    name = "MaterialXRender",
    srcs = glob([
        "source/MaterialXRender/*.cpp",
    ]),
    hdrs = glob([
        "source/MaterialXRender/*.h",
    ]) + [
        "source/MaterialXRender/External/TinyObjLoader/tiny_obj_loader.h",
        "source/MaterialXRender/External/StbImage/stb_image.h",
        "source/MaterialXRender/External/StbImage/stb_image_write.h",
    ],
    includes = ["source/"],
    deps = [
        ":MaterialXCore",
        ":MaterialXGenShader",
        "@openimageio//:OpenImageIO",
    ],
)

cc_library(
    name = "MaterialXRenderHw_default",
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

objc_library(
    name = "MaterialXRenderHw_osx",
    hdrs = glob([
        "source/MaterialXRenderHw/*.h",
    ]),
    includes = ["source/"],
    non_arc_srcs = ["source/MaterialXRenderHw/WindowCocoaWrappers.m"],
    sdk_frameworks = ["OpenGL"],
    deps = [":MaterialXRenderHw_default"],
)

cc_library(
    name = "MaterialXRenderGlsl_default",
    srcs = glob([
        "source/MaterialXRenderGlsl/*.cpp",
        "source/MaterialXRenderGlsl/External/GLew/*.cpp",
        "source/MaterialXRenderGlsl/External/GLew/*.h",
    ]),
    hdrs = glob([
        "source/MaterialXRenderGlsl/*.h",
    ]),
    includes = ["source/"],
    linkopts = select({
        "linux": ["-lXt"],
        "//conditions:default": [],
    }),
    deps = [
        ":MaterialXCore",
        ":MaterialXGenGlsl",
        ":MaterialXRender",
        ":MaterialXRenderHw",
    ],
)

alias(
    name = "MaterialXRenderHw",
    actual = select({
        ":osx": "MaterialXRenderHw_osx",
        "//conditions:default": "MaterialXRenderHw_default",
    }),
)

objc_library(
    name = "MaterialXRenderGlsl_osx",
    hdrs = glob([
        "source/MaterialXRenderGlsl/*.h",
    ]),
    includes = ["source/"],
    non_arc_srcs = ["source/MaterialXRenderGlsl/GLCocoaWrappers.m"],
    deps = [":MaterialXRenderGlsl_default"],
)

alias(
    name = "MaterialXRenderGlsl",
    actual = select({
        ":osx": "MaterialXRenderGlsl_osx",
        "//conditions:default": "MaterialXRenderGlsl_default",
    }),
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
        ":MaterialXGenOsl",
        ":MaterialXRender",
        ":MaterialXRenderHw",
    ],
)

cc_library(
    name = "MaterialXRenderMdl",
    srcs = glob([
        "source/MaterialXRenderMdl/*.cpp",
    ]),
    hdrs = glob([
        "source/MaterialXRenderMdl/*.h",
    ]),
    includes = ["source/"],
    deps = [
        ":MaterialXCore",
        ":MaterialXGenMdl",
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
    data = glob(
        [
            "resources/**",
        ],
        exclude = [
            "resources/CMakeLists.txt",
            "resources/README.md",
        ],
    ),
    includes = [
        "source/",
        "source/MaterialXView/",
    ],
    deps = [
        ":MaterialXCore",
        ":MaterialXGenGlsl",
        ":MaterialXGenMdl",
        ":MaterialXGenOsl",
        ":MaterialXRenderGlsl",
        ":MaterialXRenderMdl",
        ":MaterialXRenderOsl",
        "@nanogui",
    ],
)

config_setting(
    name = "linux",
    constraint_values = ["@platforms//os:linux"],
)

config_setting(
    name = "osx",
    constraint_values = ["@platforms//os:osx"],
)
