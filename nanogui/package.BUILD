load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

cc_binary(
    name = "bin2c",
    srcs = ["@third_party//nanogui:bin2c.cpp"],
    deps = [
        "@argparse",
        "@fmt",
        "@range-v3",
    ],
)

genrule(
    name = "resources",
    srcs = glob(["resources/*.ttf"]),
    outs = [
        "nanogui_resources.c",
        "nanogui_resources.h",
    ],
    cmd = "$(location :bin2c) -s $(location :nanogui_resources.c) -i $(location :nanogui_resources.h) $(SRCS)",
    tools = [":bin2c"],
)

cc_library(
    name = "nanogui",
    srcs = glob(
        ["src/*.cpp"],
        exclude = ["src/example*.cpp"],
    ) + [":nanogui_resources.c"],
    hdrs = glob(["include/**/*.h"]) + [":nanogui_resources.h"],
    defines = ["NANOGUI_GLAD"],
    includes = [
        ".",
        "include/",
    ],
    linkopts = select({
        ":windows": ["-DEFAULTLIB:Comdlg32"],
        "//conditions:default": [],
    }),
    visibility = ["//visibility:public"],
    deps = [
        "@eigen",
        "@glad",
        "@glfw",
        "@nanovg",
    ],
)

config_setting(
    name = "windows",
    constraint_values = ["@platforms//os:windows"],
)
