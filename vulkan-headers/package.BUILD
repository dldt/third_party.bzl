load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "vulkan-headers",
    hdrs = glob([
        "include/vulkan/*.h",
        "include/vulkan/*.hpp",
    ]),
    includes = ["include/"],
    visibility = ["//visibility:public"],
)
