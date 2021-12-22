load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "nanovg",
    srcs = glob(["src/*.c"]),
    hdrs = glob(["src/*.h"]),
    includes = ["src/"],
    visibility = ["//visibility:public"],
    deps = [
        "@eigen",
        "@glfw",
    ],
)
