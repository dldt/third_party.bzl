load("@rules_cc//cc:defs.bzl", "cc_library", "objc_library")

alias(
    name = "macos",
    actual = "@bazel_tools//src/conditions:darwin_x86_64",
)

cc_library(
    name = "SDL_image_cpp",
    srcs = glob([
        "*.c",
    ]),
    hdrs = glob(["*.h"]),
    local_defines = [
        "LOAD_BMP",
        "LOAD_GIF",
        "LOAD_JPG",
        "LOAD_LBM",
        "LOAD_PCX",
        "LOAD_PNG",
        "LOAD_PNM",
        "LOAD_SVG",
        "LOAD_TIF",
        "LOAD_TGA",
        "LOAD_WEBP",
        "LOAD_XCF",
        "LOAD_XPM",
        "LOAD_XV",
        "LOAD_XXX",
    ],
    deps = [
        "@SDL",
        "@jpeg",
        "@png",
        "@tiff",
        "@webp",
    ],
)

objc_library(
    name = "SDL_image_objc",
    non_arc_srcs = glob(
        ["*.m"],
        exclude = ["IMG_UIImage.m"],
    ),
    deps = [":SDL_image_cpp"],
)

cc_library(
    name = "SDL_image",
    visibility = ["//visibility:public"],
    deps = select({
        ":macos": [":SDL_image_objc"],
        "//conditions:default": [],
    }) + [
        ":SDL_image_cpp",
    ],
)
