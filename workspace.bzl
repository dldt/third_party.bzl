load("@third_party//abseil:repository.bzl", "abseil_repository")
load("@third_party//argparse:repository.bzl", "argparse_repository")
load("@third_party//benchmark:repository.bzl", "benchmark_repository")
load("@third_party//brigand:repository.bzl", "brigand_repository")
load("@third_party//boringssl:repository.bzl", "boringssl_repository")
load("@third_party//brotli:repository.bzl", "brotli_repository")
load("@third_party//bzip2:repository.bzl", "bzip2_repository")
load("@third_party//boost:repository.bzl", "boost_repository")
load("@third_party//boost:boost_deps.bzl", "boost_deps")
load("@third_party//catch2:repository.bzl", "catch2_repository")
load("@third_party//cli11:repository.bzl", "cli11_repository")
load("@third_party//effcee:repository.bzl", "effcee_repository")
load("@third_party//efsw:repository.bzl", "efsw_repository")
load("@third_party//eigen:repository.bzl", "eigen_repository")
load("@third_party//fmt:repository.bzl", "fmt_repository")
load("@third_party//gif:repository.bzl", "gif_repository")
load("@third_party//glad:repository.bzl", "glad_repository")
load("@third_party//glfw:repository.bzl", "glfw_repository")
load("@third_party//glm:repository.bzl", "glm_repository")
load("@third_party//glslang:repository.bzl", "glslang_repository")
load("@third_party//gsl:repository.bzl", "gsl_repository")
load("@third_party//gtest:repository.bzl", "gtest_repository")
load("@third_party//Imath:repository.bzl", "Imath_repository")
load("@third_party//imgui:repository.bzl", "imgui_repository")
load("@third_party//inja:repository.bzl", "inja_repository")
load("@third_party//jpeg:repository.bzl", "jpeg_repository")
load("@third_party//lua:repository.bzl", "lua_repository")
load("@third_party//lz4:repository.bzl", "lz4_repository")
load("@third_party//lzma:repository.bzl", "lzma_repository")
load("@third_party//magic-enum:repository.bzl", "magic_enum_repository")
load("@third_party//materialx:repository.bzl", "materialx_repository")
load("@third_party//nanogui:repository.bzl", "nanogui_repository")
load("@third_party//nanovg:repository.bzl", "nanovg_repository")
load("@third_party//nasm:repository.bzl", "nasm_repository")
load("@third_party//nlohmannjson:repository.bzl", "nlohmannjson_repository")
load("@third_party//opencolorio:repository.bzl", "opencolorio_repository")
load("@third_party//openimageio:repository.bzl", "openimageio_repository")
load("@third_party//openexr:repository.bzl", "openexr_repository")
load("@third_party//openjpeg:repository.bzl", "openjpeg_repository")
load("@third_party//png:repository.bzl", "png_repository")
load("@third_party//pybind11:repository.bzl", "pybind11_repository")
load("@third_party//pybind11_bazel:repository.bzl", "pybind11_bazel_repository")
load("@third_party//range-v3:repository.bzl", "range_v3_repository")
load("@third_party//re2:repository.bzl", "re2_repository")
load("@third_party//robin-map:repository.bzl", "robin_map_repository")
load("@third_party//SDL:repository.bzl", "SDL_repository")
load("@third_party//SDL_image:repository.bzl", "SDL_image_repository")
load("@third_party//shaderc:repository.bzl", "shaderc_repository")
load("@third_party//spdlog:repository.bzl", "spdlog_repository")
load("@third_party//spirv-headers:repository.bzl", "spirv_headers_repository")
load("@third_party//spirv-reflect:repository.bzl", "spirv_reflect_repository")
load("@third_party//spirv-tools:repository.bzl", "spirv_tools_repository")
load("@third_party//stb:repository.bzl", "stb_repository")
load("@third_party//taskflow:repository.bzl", "taskflow_repository")
load("@third_party//tbb:repository.bzl", "tbb_repository")
load("@third_party//tiff:repository.bzl", "tiff_repository")
load("@third_party//tinygltf:repository.bzl", "tinygltf_repository")
load("@third_party//tomlplusplus:repository.bzl", "tomlplusplus_repository")
load("@third_party//volk:repository.bzl", "volk_repository")
load("@third_party//vulkan-headers:repository.bzl", "vulkan_headers_repository")
load("@third_party//vulkan-memory-allocator:repository.bzl", "vulkan_memory_allocator_repository")
load("@third_party//webp:repository.bzl", "webp_repository")
load("@third_party//zlib:repository.bzl", "zlib_repository")
load("@third_party//zstd:repository.bzl", "zstd_repository")

def workspace_repositories():
    """Set up all dependent workspaces."""
    abseil_repository()
    argparse_repository()
    benchmark_repository()
    boost_repository()
    boost_deps()
    boringssl_repository()
    brigand_repository()
    brotli_repository()
    bzip2_repository()
    catch2_repository()
    cli11_repository()
    effcee_repository()
    efsw_repository()
    eigen_repository()
    fmt_repository()
    gif_repository()
    glad_repository()
    glfw_repository()
    glm_repository()
    glslang_repository()
    gsl_repository()
    gtest_repository()
    Imath_repository()
    imgui_repository()
    inja_repository()
    jpeg_repository()
    lua_repository()
    lz4_repository()
    lzma_repository()
    magic_enum_repository()
    materialx_repository()
    nanogui_repository()
    nanovg_repository()
    nasm_repository()
    nlohmannjson_repository()
    opencolorio_repository()
    openimageio_repository()
    openexr_repository()
    openjpeg_repository()
    png_repository()
    pybind11_repository()
    pybind11_bazel_repository()
    range_v3_repository()
    re2_repository()
    robin_map_repository()
    SDL_repository()
    SDL_image_repository()
    shaderc_repository()
    spdlog_repository()
    spirv_headers_repository()
    spirv_reflect_repository()
    spirv_tools_repository()
    stb_repository()
    taskflow_repository()
    tbb_repository()
    tiff_repository()
    tinygltf_repository()
    tomlplusplus_repository()
    volk_repository()
    vulkan_headers_repository()
    vulkan_memory_allocator_repository()
    webp_repository()
    zlib_repository()
    zstd_repository()
