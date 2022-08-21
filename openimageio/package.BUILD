load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")
load("@third_party//:defs.bzl", "cmake_configure_file")

config_setting(
    name = "windows",
    constraint_values = [
        "@platforms//os:windows",
    ],
)

cmake_configure_file(
    name = "oiioversion",
    src = "src/include/OpenImageIO/oiioversion.h.in",
    out = "src/include/OpenImageIO/oiioversion.h",
    defines = [
        "CMAKE_CXX_STANDARD=20",
        "PROJECT_VERSION_MAJOR=2",
        "PROJECT_VERSION_MINOR=4",
        "PROJECT_VERSION_PATCH=4",
        "PROJECT_VERSION_TWEAK=2",
        "PROJECT_VERSION_RELEASE_TYPE=",
        "PROJ_NAME=OIIO",
        "PROJ_NAMESPACE_V=OIIO_2_4",
        "OIIO_TBB=1",
        "OIIO_USING_IMATH=3",
        "Imath_VERSION_MAJOR=3",
        "Imath_VERSION_MINOR=1",
    ],
)

cmake_configure_file(
    name = "oiioimath",
    src = "src/include/OpenImageIO/Imath.h.in",
    out = "src/include/OpenImageIO/Imath.h",
    defines = [
        "OIIO_USING_IMATH=3"]
    ,
)

cmake_configure_file(
    name = "oiiohalf",
    src = "src/include/OpenImageIO/half.h.in",
    out = "src/include/OpenImageIO/half.h",
    defines = [
        "OIIO_USING_IMATH=3"]
    ,
)

cmake_configure_file(
    name = "imageiopvt",
    src = "src/libOpenImageIO/imageio_pvt.h.in",
    out = "src/libOpenImageIO/imageio_pvt.h",
    defines = [
        "PLUGIN_SEARCH_PATH_NATIVE=",
    ],
)

cc_library(
    name = "OpenImageIO",
    srcs = glob(
        [
            "src/libOpenImageIO/*.cpp",
            "src/libOpenImageIO/*.h",
            "src/libOpenImageIO/*.hh",
            "src/libOpenImageIO/*.inc",
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
    ),
    hdrs = glob([
        "src/include/OpenImageIO/**/*.h",
        "src/include/OpenImageIO/detail/**",
    ]) + [
        ":oiioversion",
        ":oiioimath",
        ":oiiohalf",
        ":imageiopvt",
    ],
    defines = ["OIIO_STATIC_DEFINE"],
    includes = [
        "src/dds.imageio/squish",
        "src/include/",
        "src/include/OpenImageIO/",
        "src/libOpenImageIO/",
    ],
    linkopts = select({
        ":windows": ["-DEFAULTLIB:Shell32.lib"],
        "//conditions:default": ["-ldl"],
    }),
    local_defines = ["EMBED_PLUGINS"],
    visibility = ["//visibility:public"],
    deps = [
        "@Imath",
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
        "@jpeg",
        "@openexr//:OpenEXR",
        "@openexr//:OpenEXRCore",
        "@openjpeg//:openjp2",
        "@png",
        "@robin-map",
        "@tbb",
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

cc_binary(
    name = "iinfo",
    srcs = ["src/iinfo/iinfo.cpp"],
    deps = [":OpenImageIO"],
)
