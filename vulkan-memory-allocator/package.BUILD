load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "vulkan-memory-allocator",
    srcs = ["@third_party//vulkan-memory-allocator:vk_mem_alloc.cpp"],
    hdrs = ["src/vk_mem_alloc.h"],
    strip_include_prefix = "src",
    visibility = ["//visibility:public"],
    deps = ["@volk"],
    local_defines = ["VMA_STATIC_VULKAN_FUNCTIONS=1"],
)
