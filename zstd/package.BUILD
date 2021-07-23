load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

package(default_visibility = ["//visibility:public"])

config_setting(
    name = "windows",
    constraint_values = ["@platforms//os:windows"],
)

cc_library(
    name = "zstd_headers",
    hdrs = glob(["lib/**/*.h"]),
    includes = [
        "lib/",
        "lib/common/",
    ],
    visibility = ["//visibility:private"],
)

cc_library(
    name = "libzstd",
    deps = [
        ":common",
        ":compress",
        ":decompress",
        ":deprecated",
        ":zstd_headers",
    ],
)

cc_library(
    name = "compress",
    srcs = glob(["lib/compress/zstd*.c"]) + ["lib/compress/hist.c"],
    hdrs = glob(["lib/compress/*.h"]),
    includes = ["lib/compress/"],
    deps = [":common"],
)

cc_library(
    name = "decompress",
    srcs = glob([
        "lib/decompress/zstd*.c",
    ]),
    deps = [
        ":common",
        ":legacy",
    ],
)

cc_library(
    name = "deprecated",
    srcs = glob(["lib/deprecated/*.c"]),
    hdrs = glob([
        "lib/deprecated/*.h",
    ]),
    includes = ["lib/deprecated/"],
    deps = [":common"],
)

cc_library(
    name = "legacy",
    srcs = glob(["lib/legacy/*.c"]),
    hdrs = glob([
        "lib/legacy/*.h",
    ]),
    defines = [
        "ZSTD_LEGACY_SUPPORT=4",
    ],
    includes = ["lib/legacy/"],
    deps = [":common"],
)

cc_library(
    name = "zdict",
    srcs = [
        "lib/dictBuilder/divsufsort.h",
        "lib/dictBuilder/cover.h",
    ] + glob([
        "lib/dictBuilder/*.c",
    ]),
    hdrs = [
        "lib/zdict.h",
    ],
    includes = ["lib/dictBuilder"],
    deps = [":common"],
)

cc_library(
    name = "compiler",
    hdrs = [
        "lib/common/compiler.h",
    ],
    includes = ["lib/common/"],
)

cc_library(
    name = "cpu",
    hdrs = [
        "lib/common/cpu.h",
    ],
    includes = ["lib/common/"],
)

cc_library(
    name = "bitstream",
    hdrs = [
        "lib/common/bitstream.h",
    ],
    includes = ["lib/common/"],
)

cc_library(
    name = "entropy",
    srcs = [
        "lib/common/bitstream.h",
        "lib/common/compiler.h",
        "lib/common/entropy_common.c",
        "lib/common/fse_decompress.c",
        "lib/compress/fse_compress.c",
        "lib/compress/huf_compress.c",
        "lib/decompress/huf_decompress.c",
    ],
    hdrs = [
        "lib/common/fse.h",
        "lib/common/huf.h",
    ],
    includes = ["lib/common"],
    deps = [
        "zstd_headers",
        ":bitstream",
        ":compiler",
        ":debug",
        ":errors",
        ":mem",
    ],
)

cc_library(
    name = "errors",
    srcs = ["lib/common/error_private.c"],
    hdrs = [
        "lib/common/error_private.h",
    ],
    includes = ["lib/common/"],
    deps = [":zstd_headers"],
)

cc_library(
    name = "mem",
    hdrs = [
        "lib/common/mem.h",
    ],
    includes = ["lib/common/"],
)

cc_library(
    name = "pool",
    srcs = ["lib/common/pool.c"],
    hdrs = [
        "lib/common/pool.h",
    ],
    includes = ["lib/common/"],
    deps = [
        ":threading",
        ":zstd_common",
    ],
)

cc_library(
    name = "threading",
    srcs = ["lib/common/threading.c"],
    hdrs = [
        "lib/common/threading.h",
    ],
    defines = [
        "ZSTD_MULTITHREAD",
    ],
    includes = ["lib/common/"],
    linkopts = select({
        ":windows": [],
        "//conditions:default": ["-pthread"],
    }),
    deps = [":debug"],
)

cc_library(
    name = "xxhash",
    srcs = ["lib/common/xxhash.c"],
    hdrs = [
        "lib/common/xxhash.h",
    ],
    defines = [
        "XXH_NAMESPACE=ZSTD_",
    ],
    includes = ["lib/common/"],
    deps = [
        ":zstd_headers",
    ]
)

cc_library(
    name = "zstd_common",
    srcs = ["lib/common/zstd_common.c"],
    includes = ["lib/common"],
    deps = [
        ":zstd_headers",
        ":compiler",
        ":errors",
        ":mem",
    ],
)

cc_library(
    name = "debug",
    srcs = ["lib/common/debug.c"],
    hdrs = [
        "lib/common/debug.h",
    ],
    includes = ["lib/common/"],
)

cc_library(
    name = "common",
    deps = [
        ":bitstream",
        ":compiler",
        ":cpu",
        ":debug",
        ":entropy",
        ":errors",
        ":mem",
        ":pool",
        ":threading",
        ":xxhash",
        ":zstd_common",
        ":zstd_headers",
    ],
)

cc_binary(
    name = "zstd",
    srcs = glob(
        [
            "programs/*.c",
            "programs/*.h",
        ],
        exclude = [
            "programs/datagen.h",
            "programs/platform.h",
            "programs/util.h",
            "programs/datagen.c",
        ],
    ),
    defines = [
        "ZSTD_GZCOMPRESS",
        "ZSTD_GZDECOMPRESS",
        "ZSTD_LZMACOMPRESS",
        "ZSTD_LZMADECOMPRES",
        "ZSTD_LZ4COMPRESS",
        "ZSTD_LZ4DECOMPRES",
    ],
    deps = [
        ":datagen",
        ":libzstd",
        ":mem",
        ":util",
        ":xxhash",
        ":zdict",
        "@lz4//:lz4frame",
        "@lzma",
        "@zlib",
    ],
)

cc_library(
    name = "datagen",
    srcs = ["programs/datagen.c"],
    hdrs = ["programs/datagen.h"],
    deps = [
        ":common",
        ":mem",
        ":util",
    ],
)

cc_library(
    name = "util",
    hdrs = [
        "programs/platform.h",
        "programs/util.h",
    ],
    includes = ["programs/"],
    deps = [":mem"],
)
