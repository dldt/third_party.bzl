# Copy and modified from https://github.com/tensorflow/io/blob/master/third_party/libtiff.BUILD

load("@rules_cc//cc:defs.bzl", "cc_library")

genrule(
    name = "tiffconf_h",
    outs = ["libtiff/tiffconf.h"],
    cmd = "\n".join([
        "cat <<'EOF' >$@",
        "#ifndef _TIFFCONF_",
        "#define _TIFFCONF_",
        "",
        "#if defined(_MSC_VER)",
        "",
        "#define TIFF_INT64_T signed __int64",
        "#define TIFF_UINT64_T unsigned __int64",
        "#define TIFF_SSIZE_T TIFF_INT64_T",
        "#define TIFF_PTRDIFF_T TIFF_INT64_T",
        "",
        "#elif defined(__APPLE__)",
        "",
        "#define TIFF_INT64_T signed long",
        "#define TIFF_UINT64_T unsigned long",
        "#define TIFF_SSIZE_T signed long",
        "#define TIFF_PTRDIFF_T ptrdiff_t",
        "",
        "#else",
        "",
        "#define TIFF_INT64_T signed long",
        "#define TIFF_UINT64_T unsigned long",
        "#define TIFF_SSIZE_T signed long",
        "#define TIFF_PTRDIFF_T ptrdiff_t",
        "",
        "#endif",
        "",
        "#define TIFF_INT16_T signed short",
        "#define TIFF_INT32_T signed int",
        "#define TIFF_INT8_T signed char",
        "#define TIFF_UINT16_T unsigned short",
        "#define TIFF_UINT32_T unsigned int",
        "#define TIFF_UINT8_T unsigned char",
        "#define HAVE_IEEEFP 1",
        "#define HOST_FILLORDER FILLORDER_LSB2MSB",
        "#define HOST_BIGENDIAN 0",
        "#define CCITT_SUPPORT 1",
        "#define JPEG_SUPPORT 1",
        "#define LOGLUV_SUPPORT 1",
        "#define LZW_SUPPORT 1",
        "#define NEXT_SUPPORT 1",
        "#define OJPEG_SUPPORT 1",
        "#define PACKBITS_SUPPORT 1",
        "#define PIXARLOG_SUPPORT 1",
        "#define THUNDER_SUPPORT 1",
        "#define ZIP_SUPPORT 1",
        "#define STRIPCHOP_DEFAULT TIFF_STRIPCHOP",
        "#define SUBIFD_SUPPORT 1",
        "#define DEFAULT_EXTRASAMPLE_AS_ALPHA 1",
        "#define CHECK_JPEG_YCBCR_SUBSAMPLING 1",
        "#define MDI_SUPPORT 1",
        "#define COLORIMETRY_SUPPORT",
        "#define YCBCR_SUPPORT",
        "#define CMYK_SUPPORT",
        "#define ICC_SUPPORT",
        "#define PHOTOSHOP_SUPPORT",
        "#define IPTC_SUPPORT",
        "#endif /* _TIFFCONF_ */",
        "EOF",
    ]),
)

genrule(
    name = "tif_config_h",
    outs = ["libtiff/tif_config.h"],
    cmd = "\n".join([
        "cat <<'EOF' >$@",
        "#if defined(_MSC_VER)",
        "",
        "#define TIFF_INT64_T signed __int64",
        "#define TIFF_UINT64_T unsigned __int64",
        '#define TIFF_INT64_FORMAT "%I64d"',
        '#define TIFF_UINT64_FORMAT "%I64u"',
        "#define TIFF_PTRDIFF_T TIFF_INT64_T",
        '#define TIFF_PTRDIFF_FORMAT "%ld"',
        "#define TIFF_SIZE_FORMAT TIFF_INT64_FORMAT",
        "#define TIFF_SIZE_T TIFF_UINT64_T",
        "#define TIFF_SSIZE_FORMAT TIFF_INT64_FORMAT",
        "#define TIFF_SSIZE_T TIFF_INT64_T",
        "#define SIZEOF_SIGNED_LONG 4",
        "#define SIZEOF_UNSIGNED_LONG 4",
        "",
        "#elif defined(__APPLE__)",
        "",
        "#define TIFF_INT64_T signed long",
        "#define TIFF_UINT64_T unsigned long",
        '#define TIFF_INT64_FORMAT "%ld"',
        '#define TIFF_UINT64_FORMAT "%lu"',
        "#define TIFF_PTRDIFF_T ptrdiff_t",
        '#define TIFF_PTRDIFF_FORMAT "%ld"',
        '#define TIFF_SIZE_FORMAT "%lu"',
        "#define TIFF_SIZE_T unsigned long",
        '#define TIFF_SSIZE_FORMAT "%ld"',
        "#define TIFF_SSIZE_T signed long",
        "#define SIZEOF_SIGNED_LONG 8",
        "#define SIZEOF_UNSIGNED_LONG 8",
        "#define HAVE_MMAP 1",
        "#define HAVE_STRINGS_H 1",
        "#define HAVE_UNISTD_H 1",
        "",
        "#else",
        "",
        "#define TIFF_INT64_T signed long",
        "#define TIFF_UINT64_T unsigned long",
        '#define TIFF_INT64_FORMAT "%ld"',
        '#define TIFF_UINT64_FORMAT "%lu"',
        "#define TIFF_PTRDIFF_T ptrdiff_t",
        '#define TIFF_PTRDIFF_FORMAT "%ld"',
        '#define TIFF_SIZE_FORMAT "%lu"',
        "#define TIFF_SIZE_T unsigned long",
        '#define TIFF_SSIZE_FORMAT "%ld"',
        "#define TIFF_SSIZE_T signed long",
        "#define SIZEOF_SIGNED_LONG 8",
        "#define SIZEOF_UNSIGNED_LONG 8",
        "#define HAVE_MMAP 1",
        "#define HAVE_STRINGS_H 1",
        "#define HAVE_UNISTD_H 1",
        "",
        "#endif",
        "",
        "#define CCITT_SUPPORT 1",
        "#define CHECK_JPEG_YCBCR_SUBSAMPLING 1",
        "#define CXX_SUPPORT 1",
        "#define DEFAULT_EXTRASAMPLE_AS_ALPHA 1",
        "#define HAVE_ASSERT_H 1",
        "#define HAVE_DECL_OPTARG 1",
        "#define HAVE_DLFCN_H 1",
        "#define HAVE_FCNTL_H 1",
        "#define HAVE_FSEEKO 1",
        "#define HAVE_GETOPT 1",
        "#define HAVE_GLUT_GLUT_H 1",
        "#define HAVE_IEEEFP 1",
        "#define HAVE_INTTYPES_H 1",
        "#define HAVE_LFIND 1",
        "#define HAVE_MEMORY_H 1",
        "#define HAVE_OPENGL_GLU_H 1",
        "#define HAVE_OPENGL_GL_H 1",
        "#define HAVE_PTHREAD 1",
        "#define HAVE_SEARCH_H 1",
        "#define HAVE_SETMODE 1",
        "#define HAVE_SNPRINTF 1",
        "#define HAVE_STDINT_H 1",
        "#define HAVE_STDLIB_H 1",
        "#define HAVE_STRCASECMP 1",
        "#define HAVE_STRING_H 1",
        "#define HAVE_STRTOL 1",
        "#define HAVE_STRTOLL 1",
        "#define HAVE_STRTOUL 1",
        "#define HAVE_STRTOULL 1",
        "#define HAVE_SYS_STAT_H 1",
        "#define HAVE_SYS_TYPES_H 1",
        "#define HOST_BIGENDIAN 0",
        "#define HOST_FILLORDER FILLORDER_LSB2MSB",
        "#define JPEG_SUPPORT 1",
        "#define LOGLUV_SUPPORT 1",
        '#define LT_OBJDIR ".libs/"',
        "#define LZMA_SUPPORT 1",
        "#define LZW_SUPPORT 1",
        "#define MDI_SUPPORT 1",
        "#define NEXT_SUPPORT 1",
        "#define OJPEG_SUPPORT 1",
        '#define PACKAGE "tiff"',
        '#define PACKAGE_BUGREPORT "tiff@lists.maptools.org"',
        '#define PACKAGE_NAME "LibTIFF Software"',
        '#define PACKAGE_STRING "LibTIFF Software 4.1.0"',
        '#define PACKAGE_TARNAME "tiff"',
        '#define PACKAGE_URL ""',
        '#define PACKAGE_VERSION "4.1.0"',
        "#define PACKBITS_SUPPORT 1",
        "#define PIXARLOG_SUPPORT 1",
        "#define SIZEOF_SIGNED_INT 4",
        "#define SIZEOF_SIGNED_LONG_LONG 8",
        "#define SIZEOF_SIZE_T 8",
        "#define SIZEOF_UNSIGNED_CHAR_P 8",
        "#define SIZEOF_UNSIGNED_INT 4",
        "#define SIZEOF_UNSIGNED_LONG_LONG 8",
        "#define STDC_HEADERS 1",
        "#define STRIPCHOP_DEFAULT TIFF_STRIPCHOP",
        "#define STRIP_SIZE_DEFAULT 8192",
        "#define SUBIFD_SUPPORT 1",
        "#define THUNDER_SUPPORT 1",
        "#define TIFF_INT16_T signed short",
        '#define TIFF_INT32_FORMAT "%d"',
        "#define TIFF_INT32_T signed int",
        "#define TIFF_INT8_T signed char",
        "#define TIFF_UINT16_T unsigned short",
        '#define TIFF_UINT32_FORMAT "%u"',
        "#define TIFF_UINT32_T unsigned int",
        "#define TIFF_UINT8_T unsigned char",
        "#define TIME_WITH_SYS_TIME 1",
        '#define VERSION "4.1.0"',
        "#define WEBP_SUPPORT 1",
        "#define X_DISPLAY_MISSING 1",
        "#define ZIP_SUPPORT 1",
        "#define ZSTD_SUPPORT 1",
        "#define _DARWIN_USE_64_BIT_INODE 1",
        "EOF",
    ]),
)

cc_library(
    name = "tiff",
    srcs = glob(
        [
            "libtiff/tif_*.c",
        ],
        exclude = [
            "libtiff/tif_win32.c",
            "libtiff/tif_wince.c",
            "libtiff/tif_vms.c",
        ],
    ) + [
        "libtiff/tif_stream.cxx",
    ],
    hdrs = glob([
        "libtiff/*.h",
    ]) + [
        "libtiff/tif_config.h",
        "libtiff/tiffconf.h",
        "libtiff/tiffio.hxx",
    ],
    defines = [],
    includes = [
        "libtiff",
    ],
    linkopts = [],
    visibility = ["//visibility:public"],
    deps = [
        "@jpeg",
        "@lzma",
        "@webp",
        "@zlib",
        "@zstd//:libzstd",
    ],
)
