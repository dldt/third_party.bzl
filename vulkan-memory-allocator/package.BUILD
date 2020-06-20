load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "vulkan-memory-allocator",
    srcs = ["@third_party//vulkan-memory-allocator:vk_mem_alloc.cpp"],
    hdrs = ["src/vk_mem_alloc.h"],
    include_prefix = "vulkan-memory-allocator/",
    strip_include_prefix = "src",
    visibility = ["//visibility:public"],
    deps = ["@vulkan"],
)
