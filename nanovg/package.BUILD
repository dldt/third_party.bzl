load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "nanovg",
    srcs = glob(["src/*.c"]),
    hdrs = glob(["src/*.h"]),
    includes = ["src/"],
    visibility = ["//visibility:public"],
    local_defines = ["NANOVG_GL3", "NANOVG_USE_GLAD"],
    deps = [
        "@eigen",
        "@glad",
        "@glfw",
        "@stb//:image",
        "@stb//:truetype",
    ],
)
