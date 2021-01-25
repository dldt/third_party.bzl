load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")
load("@third_party//:defs.bzl", "template_rule")

template_rule(
    name = "oiioversion",
    src = "src/include/OpenImageIO/oiioversion.h.in",
    out = "src/include/OpenImageIO/oiioversion.h",
    substitutions = {
        "@CMAKE_CXX_STANDARD@": "20",
        "@PROJECT_VERSION_MAJOR@": "2",
        "@PROJECT_VERSION_MINOR@": "2",
        "@PROJECT_VERSION_PATCH@": "10",
        "@PROJECT_VERSION_TWEAK@": "1",
        "@PROJECT_VERSION_RELEASE_TYPE@": "",
        "@PROJ_NAME@": "OIIO",
        "@PROJ_NAMESPACE_V@": "OIIO_2_2",
    },
)

template_rule(
    name = "imageiopvt",
    src = "src/libOpenImageIO/imageio_pvt.h.in",
    out = "src/libOpenImageIO/imageio_pvt.h",
    substitutions = {},
)

cc_library(
    name = "OpenImageIO",
    srcs = glob(
        [
            "src/libOpenImageIO/*.cpp",
            "src/libOpenImageIO/*.h",
            "src/*.imageio/**/*.cpp",
            "src/*.imageio/**/*.h",
        ],
        exclude = [
            "src/ffmpeg.imageio/*",
            "src/gif.imageio/*",
            "src/ptex.imageio/*",
            "src/dicom.imageio/*",
            "src/dcmtk.imageio/*",
            "src/raw.imageio/*",
            "src/socket.imageio/*",
            "src/heif.imageio/*",
            "src/field3d.imageio/*",
            "src/openvdb.imageio/*",
        ],
    ),
    hdrs = glob([
        "src/include/OpenImageIO/**/*.h",
    ]) + [
        ":oiioversion",
        ":imageiopvt",
    ],
    includes = [
        "src/dds.imageio/squish",
        "src/include/",
        "src/libOpenImageIO/",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@boost//:container",
        "@fmt",
        "@jpeg",
        "@openexr//:IlmImf",
        "@openjpeg//:openjp2",
        "@png",
        "@tiff",
        "@webp",
    ],
)

cc_binary(
    name = "iconvert",
    srcs = ["src/iconvert/iconvert.cpp"],
    deps = [":OpenImageIO"],
)

cc_binary(
    name = "idiff",
    srcs = ["src/idiff/idiff.cpp"],
    deps = [":OpenImageIO"],
)

cc_binary(
    name = "igrep",
    srcs = ["src/igrep/igrep.cpp"],
    deps = [":OpenImageIO"],
)