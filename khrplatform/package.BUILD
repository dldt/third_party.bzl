load("@rules_cc//cc:defs.bzl", "cc_library")

licenses(["notice"])

cc_library(
    name = "khr",
    hdrs = ["api/KHR/khrplatform.h"],
    strip_include_prefix = "api/",
    visibility = ["//visibility:public"],
)

cc_library(
    name = "egl",
    hdrs = glob(["api/EGL/*.h"]),
    strip_include_prefix = "api/",
    visibility = ["//visibility:public"],
)
