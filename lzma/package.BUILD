# Copied from https://github.com/nelhage/rules_boost/blob/master/BUILD.lzma

# Description
#    lzma is a general purpose data compression library https://tukaani.org/xz/
#    Public Domain

load("@bazel_skylib//rules:copy_file.bzl", "copy_file")
load("@rules_cc//cc:defs.bzl", "cc_library")

config_setting(
    name = "linux",
    constraint_values = ["@platforms//os:linux"],
)

config_setting(
    name = "osx",
    constraint_values = ["@platforms//os:osx"],
)

config_setting(
    name = "windows",
    constraint_values = ["@platforms//os:windows"],
)

copy_file(
    name = "copy_config",
    src = select({
        ":linux": "@third_party//lzma:config.lzma-linux.h",
        ":osx": "@third_party//lzma:config.lzma-osx.h",
        ":windows": "@third_party//lzma:config.lzma-windows.h",
    }),
    out = "config.h",
)

cc_library(
    name = "lzma",
    srcs = [
        "src/common/tuklib_cpucores.c",
        "src/common/tuklib_physmem.c",
        "src/liblzma/check/check.c",
        "src/liblzma/check/crc32_fast.c",
        "src/liblzma/check/crc32_table.c",
        "src/liblzma/check/crc64_fast.c",
        "src/liblzma/check/crc64_table.c",
        "src/liblzma/check/sha256.c",
        "src/liblzma/common/alone_decoder.c",
        "src/liblzma/common/alone_encoder.c",
        "src/liblzma/common/auto_decoder.c",
        "src/liblzma/common/block_buffer_decoder.c",
        "src/liblzma/common/block_buffer_encoder.c",
        "src/liblzma/common/block_decoder.c",
        "src/liblzma/common/block_encoder.c",
        "src/liblzma/common/block_header_decoder.c",
        "src/liblzma/common/block_header_encoder.c",
        "src/liblzma/common/block_util.c",
        "src/liblzma/common/common.c",
        "src/liblzma/common/easy_buffer_encoder.c",
        "src/liblzma/common/easy_decoder_memusage.c",
        "src/liblzma/common/easy_encoder.c",
        "src/liblzma/common/easy_encoder_memusage.c",
        "src/liblzma/common/easy_preset.c",
        "src/liblzma/common/filter_buffer_decoder.c",
        "src/liblzma/common/filter_buffer_encoder.c",
        "src/liblzma/common/filter_common.c",
        "src/liblzma/common/filter_decoder.c",
        "src/liblzma/common/filter_encoder.c",
        "src/liblzma/common/filter_flags_decoder.c",
        "src/liblzma/common/filter_flags_encoder.c",
        "src/liblzma/common/hardware_cputhreads.c",
        "src/liblzma/common/hardware_physmem.c",
        "src/liblzma/common/index.c",
        "src/liblzma/common/index_decoder.c",
        "src/liblzma/common/index_encoder.c",
        "src/liblzma/common/index_hash.c",
        "src/liblzma/common/outqueue.c",
        "src/liblzma/common/stream_buffer_decoder.c",
        "src/liblzma/common/stream_buffer_encoder.c",
        "src/liblzma/common/stream_decoder.c",
        "src/liblzma/common/stream_encoder.c",
        "src/liblzma/common/stream_encoder_mt.c",
        "src/liblzma/common/stream_flags_common.c",
        "src/liblzma/common/stream_flags_decoder.c",
        "src/liblzma/common/stream_flags_encoder.c",
        "src/liblzma/common/vli_decoder.c",
        "src/liblzma/common/vli_encoder.c",
        "src/liblzma/common/vli_size.c",
        "src/liblzma/delta/delta_common.c",
        "src/liblzma/delta/delta_decoder.c",
        "src/liblzma/delta/delta_encoder.c",
        "src/liblzma/lz/lz_decoder.c",
        "src/liblzma/lz/lz_encoder.c",
        "src/liblzma/lz/lz_encoder_mf.c",
        "src/liblzma/lzma/fastpos_table.c",
        "src/liblzma/lzma/lzma2_decoder.c",
        "src/liblzma/lzma/lzma2_encoder.c",
        "src/liblzma/lzma/lzma_decoder.c",
        "src/liblzma/lzma/lzma_encoder.c",
        "src/liblzma/lzma/lzma_encoder_optimum_fast.c",
        "src/liblzma/lzma/lzma_encoder_optimum_normal.c",
        "src/liblzma/lzma/lzma_encoder_presets.c",
        "src/liblzma/rangecoder/price_table.c",
        "src/liblzma/simple/arm.c",
        "src/liblzma/simple/armthumb.c",
        "src/liblzma/simple/ia64.c",
        "src/liblzma/simple/powerpc.c",
        "src/liblzma/simple/simple_coder.c",
        "src/liblzma/simple/simple_decoder.c",
        "src/liblzma/simple/simple_encoder.c",
        "src/liblzma/simple/sparc.c",
        "src/liblzma/simple/x86.c",
    ],
    hdrs = glob(["src/**/*.h"]) + ["config.h"],
    copts = select({
        ":windows": [],
        "//conditions:default": ["-std=c99"],
    }),
    defines = [
        "HAVE_CONFIG_H",
        "LZMA_API_STATIC",
    ],
    includes = [
        ".",
        "src",
        "src/common",
        "src/liblzma",
        "src/liblzma/api",
        "src/liblzma/check",
        "src/liblzma/common",
        "src/liblzma/delta",
        "src/liblzma/lz",
        "src/liblzma/lzma",
        "src/liblzma/rangecoder",
        "src/liblzma/simple",
    ],
    linkopts = select({
        ":windows": [],
        "//conditions:default": ["-lpthread"],
    }),
    visibility = ["//visibility:public"],
)
