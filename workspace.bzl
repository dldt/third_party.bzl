load("@third_party//abseil:repository.bzl", "abseil_repository")
load("@third_party//argparse:repository.bzl", "argparse_repository")
load("@third_party//benchmark:repository.bzl", "benchmark_repository")
load("@third_party//boost:repository.bzl", "boost_repository")
load("@third_party//brigand:repository.bzl", "brigand_repository")
load("@third_party//catch2:repository.bzl", "catch2_repository")
load("@third_party//fmt:repository.bzl", "fmt_repository")
load("@third_party//glad:repository.bzl", "glad_repository")
load("@third_party//glfw:repository.bzl", "glfw_repository")
load("@third_party//glm:repository.bzl", "glm_repository")
load("@third_party//glslang:repository.bzl", "glslang_repository")
load("@third_party//gtest:repository.bzl", "gtest_repository")
load("@third_party//khrplatform:repository.bzl", "khrplatform_repository")
load("@third_party//lz4:repository.bzl", "lz4_repository")
load("@third_party//lzma:repository.bzl", "lzma_repository")
load("@third_party//nlohmannjson:repository.bzl", "nlohmannjson_repository")
load("@third_party//pybind11:repository.bzl", "pybind11_repository")
load("@third_party//pybind11_bazel:repository.bzl", "pybind11_bazel_repository")
load("@third_party//range-v3:repository.bzl", "range_v3_repository")
load("@third_party//spdlog:repository.bzl", "spdlog_repository")
load("@third_party//tbb:repository.bzl", "tbb_repository")
load("@third_party//volk:repository.bzl", "volk_repository")
load("@third_party//vulkan:repository.bzl", "vulkan_repository")
load("@third_party//vulkan-memory-allocator:repository.bzl", "vulkan_memory_allocator_repository")
load("@third_party//zlib:repository.bzl", "zlib_repository")
load("@third_party//zstd:repository.bzl", "zstd_repository")

def workspace_repositories():
    """Set up all dependent workspaces."""
    abseil_repository()
    argparse_repository()
    benchmark_repository()
    boost_repository()
    brigand_repository()
    catch2_repository()
    fmt_repository()
    glad_repository()
    glfw_repository()
    glm_repository()
    glslang_repository()
    gtest_repository()
    khrplatform_repository()
    lz4_repository()
    lzma_repository()
    nlohmannjson_repository()
    pybind11_repository()
    pybind11_bazel_repository()
    range_v3_repository()
    spdlog_repository()
    tbb_repository()
    volk_repository()
    vulkan_repository()
    vulkan_memory_allocator_repository()
    zlib_repository()
    zstd_repository()
