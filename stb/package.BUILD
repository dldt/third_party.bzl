# Copied and modified from https://github.com/nitronoid/rules_stb

load("@rules_cc//cc:defs.bzl", "cc_library")
load("@third_party//stb:stb.bzl", "stb_library")

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

STB_COPTS = select({
    ":windows": [],
    "//conditions:default": [
        "-Wno-sign-conversion",
        "-Wno-conversion",
        "-Wno-old-style-cast",
        "-Wno-useless-cast",
        "-Wno-shadow",
        "-Wno-double-promotion",
        "-Wno-unused-parameter",
        "-Wno-maybe-uninitialized",
        "-Wno-type-limits",
        "-Wno-zero-as-null-pointer-constant",
        "-Wno-cast-qual",
    ],
})

stb_library(
    name = "c_lexer",
    copts = STB_COPTS + select({
        ":windows": [],
        "//conditions:default": ["-Wno-unused-function"],
    }),
    emit_definition_macro = "STB_C_LEXER_IMPLEMENTATION",
)

stb_library(
    name = "divide",
    copts = STB_COPTS,
    emit_definition_macro = "STB_DIVIDE_IMPLEMENTATION",
)

stb_library(
    name = "ds",
    copts = STB_COPTS,
    emit_definition_macro = "STB_DS_IMPLEMENTATION",
)

stb_library(
    name = "dxt",
    copts = STB_COPTS,
    emit_definition_macro = "STB_DXT_IMPLEMENTATION",
)

stb_library(
    name = "easy_font",
    copts = STB_COPTS + select({
        ":windows": [],
        "//conditions:default": ["-Wno-unused-function"],
    }),
    emit_definition_macro = "STB_EASY_FONT_IMPLEMENTATION",
)

stb_library(
    name = "herringbone_wang_tile",
    copts = STB_COPTS + select({
        ":windows": [],
        "//conditions:default": [
            "-Wno-strict-overflow",
            "-Wno-missing-field-initializers",
        ],
    }),
    emit_definition_macro = "STB_HERRINGBONE_WANG_TILE_IMPLEMENTATION",
)

stb_library(
    name = "image",
    copts = STB_COPTS,
    emit_definition_macro = "STB_IMAGE_IMPLEMENTATION",
)

stb_library(
    name = "image_resize",
    copts = STB_COPTS,
    emit_definition_macro = "STB_IMAGE_RESIZE_IMPLEMENTATION",
)

stb_library(
    name = "image_write",
    copts = STB_COPTS,
    emit_definition_macro = "STB_IMAGE_WRITE_IMPLEMENTATION",
)

stb_library(
    name = "include",
    copts = STB_COPTS + select({
        ":windows": [],
        "//conditions:default": ["-Wno-unused-value"],
    }),
    emit_definition_macro = "STB_INCLUDE_IMPLEMENTATION",
)

stb_library(
    name = "leakcheck",
    copts = STB_COPTS,
    emit_definition_macro = "STB_LEAKCHECK_IMPLEMENTATION",
)

stb_library(
    name = "rect_pack",
    copts = STB_COPTS,
    emit_definition_macro = "STB_RECT_PACK_IMPLEMENTATION",
)

stb_library(
    name = "sprintf",
    copts = STB_COPTS + [
        "-fno-strict-aliasing",
    ],
    emit_definition_macro = "STB_SPRINTF_IMPLEMENTATION",
)

stb_library(
    name = "truetype",
    copts = STB_COPTS,
    emit_definition_macro = "STB_TRUETYPE_IMPLEMENTATION",
)

stb_library(
    name = "voxel_render",
    copts = STB_COPTS,
)

# stb_vorbis has a reversed mechanism

cc_library(
    name = "vorbis-private",
    srcs = ["stb_vorbis.c"],
    hdrs = ["stb_vorbis.c"],
    copts = STB_COPTS + select({
        ":windows": [],
        "//conditions:default": ["-Wno-unused-value"],
    }),
    include_prefix = "stb",
    visibility = ["//visibility:private"],
)

cc_library(
    name = "vorbis",
    defines = ["STB_VORBIS_HEADER_ONLY"],
    visibility = ["//visibility:public"],
    deps = ["//:vorbis-private"],
)
