load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")
load("@third_party//:defs.bzl", "template_rule")

config_setting(
    name = "windows",
    constraint_values = [
        "@platforms//os:windows",
    ],
)

template_rule(
    name = "oiioversion",
    src = "src/include/OpenImageIO/oiioversion.h.in",
    out = "src/include/OpenImageIO/oiioversion.h",
    substitutions = {
        "@CMAKE_CXX_STANDARD@": "20",
        "@PROJECT_VERSION_MAJOR@": "2",
        "@PROJECT_VERSION_MINOR@": "2",
        "@PROJECT_VERSION_PATCH@": "14",
        "@PROJECT_VERSION_TWEAK@": "0",
        "@PROJECT_VERSION_RELEASE_TYPE@": "",
        "@PROJ_NAME@": "OIIO",
        "@PROJ_NAMESPACE_V@": "OIIO_2_2",
    },
)

template_rule(
    name = "oiioimath",
    src = "src/include/OpenImageIO/Imath.h.in",
    out = "src/include/OpenImageIO/Imath.h",
    substitutions = {
        "@OIIO_USING_IMATH@": "3",
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
            "src/libOpenImageIO/*.hh",
            "src/libtexture/*.cpp",
            "src/libtexture/*.h",
            "src/libutil/*.cpp",
            "src/libutil/*.h",
            "src/*.imageio/**/*.cpp",
            "src/*.imageio/**/*.h",
            "src/*.imageio/**/*.inl",
        ],
        exclude = [
            "src/libOpenImageIO/*_test.cpp",
            "src/libutil/*_test.cpp",
            "src/ffmpeg.imageio/*",
            "src/field3d.imageio/*",
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
    ) + ["src/field3d.imageio/field3d_backdoor.h"], # Still be to able to include field3d_backdoor.h
    hdrs = glob([
        "src/include/OpenImageIO/**/*.h",
        "src/include/OpenImageIO/detail/**",
    ]) + [
        ":oiioversion",
        ":oiioimath",
        ":imageiopvt",
    ],
    includes = [
        "src/dds.imageio/squish",
        "src/include/",
        "src/libOpenImageIO/",
    ],
    visibility = ["//visibility:public"],
    local_defines = ["EMBED_PLUGINS"],
    defines = ["OIIO_STATIC_DEFINE"],
    deps = [
        "@boost//:algorithm",
        "@boost//:container",
        "@boost//:filesystem",
        "@boost//:iterator",
        "@boost//:random",
        "@boost//:stacktrace",
        "@boost//:thread",
        "@boost//:throw_exception",
        "@boost//:tokenizer",
        "@fmt",
        "@Imath",
        "@jpeg",
        "@openexr//:OpenEXR",
        "@openjpeg//:openjp2",
        "@png",
        "@robin-map",
        "@tiff",
        "@webp",
    ],
    linkopts = select({
        ":windows": ["-DEFAULTLIB:Shell32.lib"],
        "//conditions:default": ["-ldl"],
    })
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

cc_binary(
    name = "iinfo",
    srcs = ["src/iinfo/iinfo.cpp"],
    deps = [":OpenImageIO"],
)