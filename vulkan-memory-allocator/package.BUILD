load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "vulkan-memory-allocator",
    srcs = ["@third_party//vulkan-memory-allocator:vk_mem_alloc.cpp"],
    hdrs = ["include/vk_mem_alloc.h"],
    strip_include_prefix = "include/",
    visibility = ["//visibility:public"],
    deps = ["@volk"],
    local_defines = ["VMA_STATIC_VULKAN_FUNCTIONS=1"],
)
