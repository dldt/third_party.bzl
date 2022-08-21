load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "webp",
    srcs = glob([
        "src/dsp/*.c",
        "src/dsp/*.h",
        "src/utils/*.c",
        "src/utils/*.h",
        "src/dec/*.c",
        "src/dec/*.h",
        "src/demux/*.c",
        "src/demux/*.h",
        "src/enc/*.c",
        "src/enc/*.h",
        "src/webp/*.h",
        "sharpyuv/*.c",
        "sharpyuv/*.h",
    ]) + [
        "imageio/imageio_util.c",
        "imageio/webpdec.c",
        "imageio/metadata.c",
        "imageio/webpdec.h",
        "imageio/metadata.h",
        "imageio/imageio_util.h",
        "examples/unicode.h",
    ],
    includes = [
        "src",
    ],
    visibility = ["//visibility:public"],
)
