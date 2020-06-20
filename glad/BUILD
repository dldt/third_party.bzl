load("@rules_cc//cc:defs.bzl", "cc_library")

# platforms

cc_library(
    name = "egl",
    srcs = ["src/egl.c"],
    hdrs = ["include/glad/egl.h"],
    includes = ["include/"],
    visibility = ["//visibility:public"],
    deps = [
        "@khrplatform//:egl",
        "@khrplatform//:khr",
    ],
)

cc_library(
    name = "glx",
    srcs = ["src/glx.c"],
    hdrs = ["include/glad/glx.h"],
    includes = ["include/"],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "wgl",
    srcs = ["src/wgl.c"],
    hdrs = ["include/glad/wgl.h"],
    includes = ["include/"],
    visibility = ["//visibility:public"],
)

# APIs

cc_library(
    name = "gles1",
    srcs = ["src/gles1.c"],
    hdrs = ["include/glad/gles1.h"],
    includes = ["include/"],
    visibility = ["//visibility:public"],
    deps = ["@khrplatform//:khr"],
)

cc_library(
    name = "gles2",
    srcs = ["src/gles2.c"],
    hdrs = ["include/glad/gles2.h"],
    includes = ["include/"],
    visibility = ["//visibility:public"],
    deps = ["@khrplatform//:khr"],
)

cc_library(
    name = "glsc2",
    srcs = ["src/glsc2.c"],
    hdrs = ["include/glad/glsc2.h"],
    includes = ["include/"],
    visibility = ["//visibility:public"],
    deps = ["@khrplatform//:khr"],
)

cc_library(
    name = "gl",
    srcs = ["src/gl.c"],
    hdrs = ["include/glad/gl.h"],
    includes = ["include/"],
    visibility = ["//visibility:public"],
    deps = ["@khrplatform//:khr"],
)

cc_library(
    name = "vulkan",
    srcs = ["src/vulkan.c"],
    hdrs = [
        "include/glad/vulkan.h",
        "include/vk_platform.h",
    ],
    includes = ["include/"],
    visibility = ["//visibility:public"],
    deps = ["@khrplatform//:khr"],
)
