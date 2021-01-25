def boost_library(
    name,
    srcs = None,
    textual_hdrs = None,
    defines = None,
    linkopts = None,
    deps = None,
    sha256 = None):
    return {
        'name': name,
        'version': 'boost-1.75.0',
        'srcs': srcs,
        'textual_hdrs': textual_hdrs,
        'defines': (defines or []) + ["BOOST_ALL_NO_LIB"],
        'linkopts': linkopts,
        'deps': deps or [],
        'sha256': sha256,
    }

BOOST_LIBRARIES = [
    boost_library(
        name = "algorithm",
        deps = [
            "array",
            "assert",
            "core",
            "function",
            "range",
            "static_assert",
        ],
    ),

    boost_library(
        name = "align",
        deps = [
            "assert",
            "config",
            "core",
            "static_assert",
            "throw_exception",
        ],
    ),

    boost_library(
        name = "any",
        deps = [
            "throw_exception",
            "type_index",
        ],
    ),

    boost_library(
        name = "array",
        deps = ["throw_exception"],
    ),

    boost_library(
        name = "asio",
        deps = [
            "bind",
            "config",
            "date_time",
            "regex",
            "system",
            "throw_exception",
        ],
        linkopts = select({
            "@bazel_tools//src/conditions:windows": [],
            "//conditions:default": ["-pthread"],
        }),
    ),

    boost_library(
        name = "assert",
        sha256 = "10ca188f83c0c0bf7547e6e2d88ed81c4e94595ce60309f1528494f0a6d1aeb9",
    ),

    boost_library(
        name = "atomic",
        deps = [
            "assert",
            "config",
            "type_traits",
        ],
    ),

    boost_library(
        name = "beast",
        deps = [
            "intrusive",
            "logic",
            "move",
            "mp11",
            "optional",
        ],
        defines = ["BOOST_BEAST_USE_STD_STRING_VIEW"],
    ),

    boost_library(
        name = "bind",
    ),

    boost_library(
        name = "chrono",
        deps = ["ratio"],
    ),

    boost_library(
        name = "circular_buffer",
        deps = [
            "concept_check",
            "config",
            "core",
            "move",
            "preprocessor",
            "static_assert",
            "throw_exception",
            "type_traits",
        ],
    ),

    boost_library(
        name = "concept_check",
    ),

    boost_library(
        name = "config",
        sha256 = "c63bbda5a96683fde02a16ad9d76d9877aadec291e307aaae48975eb236e8e6e",
    ),

    boost_library(
        name = "container",
        deps = [
            "assert",
            "config",
            "container_hash",
            "core",
            "intrusive",
            "move",
            "static_assert",
            "type_traits",
        ],
        sha256= "1044fc87e8abc5a0ad3a74e9c8ff86b436baac4d162d7dd848ff15fe8dde5ca6",
    ),

    boost_library(
        name = "container_hash",
        deps = [
            "assert",
            "core",
            "detail",
            "integer",
            "type_traits",
        ],
        sha256 = "457ce31365789b6939b00f7a63997f9ff7f0ba3ef31e5413973f6f29967fd23c",
    ),

    boost_library(
        name = "core",
        deps = ["config"],
        sha256 = "edaf5227e9f3abe5afa3a26c94f5995f26f4facae80f6aab0728142d361157da",
    ),

    boost_library(
        name = "date_time",
        srcs = [
            "src/gregorian/greg_month.cpp",
        ],
        deps = [
            "io",
            "lexical_cast",
            "mpl",
            "numeric_conversion",
            "smart_ptr",
            "static_assert",
            "throw_exception",
            "tokenizer",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "detail",
        sha256 = "ca977746b9f001f81278ad427c9bb21e0a61e8046fea601ca64987fe3a0c16a3",
    ),

    boost_library(
        name = "exception",
    ),

    boost_library(
        name = "filesystem",
        srcs = [
            "src/codecvt_error_category.cpp",
            "src/directory.cpp",
            "src/exception.cpp",
            "src/operations.cpp",
            "src/path_traits.cpp",
            "src/path.cpp",
            "src/portability.cpp",
            "src/unique_path.cpp",
            "src/utf8_codecvt_facet.cpp",
            "src/windows_file_codecvt.cpp",
        ],
        deps = [
            "config",
            "container_hash",
            "io",
            "iterator",
            "range",
            "smart_ptr",
            "system",
            "type_traits",
        ],
    ),

    boost_library(
        name = "foreach",
    ),

    boost_library(
        name = "format",
    ),

    boost_library(
        name = "function",
        deps = [
            "bind",
            "move",
            "type_index",
        ],
    ),

    boost_library(
        name = "function_types",
    ),

    boost_library(
        name = "functional",
        deps = [
            "config",
            "utility",
        ],
    ),

    boost_library(
        name = "fusion",
        deps = [
            "typeof",
        ],
    ),

    boost_library(
        name = "hana",
        deps = [
            "config",
            "core",
            "fusion",
            "mpl",
            "tuple",
        ],
    ),

    boost_library(
        name = "icl",
        deps = [
            "assert",
            "config",
            "iterator",
            "move",
            "range",
        ],
    ),

    boost_library(
        name = "integer",
        deps = [
            "config",
            "static_assert",
        ],
        sha256 = "42e0ec1d292e1f74d54981b968c342431f392c8e446436318af907bf5d2a835d",
    ),

    boost_library(
        name = "io",
    ),

    boost_library(
        name = "interprocess",
        deps = [
            "config",
            "date_time",
            "detail",
            "unordered",
            "winapi",
        ],
    ),

    boost_library(
        name = "intrusive",
        sha256 = "851f72308957a1237ba9a6cfcb67fa9aef495ec4119cb895993aac23035de5f1",
    ),

    boost_library(
        name = "iterator",
        deps = [
            "detail",
            "mpl",
            "type_traits",
        ],
    ),

    boost_library(
        name = "lexical_cast",
        deps = [
            "array",
            "container",
            "integer",
            "numeric_conversion",
            "math",
            "range",
        ],
    ),

    boost_library(
        name = "locale",
    ),

    boost_library(
        name = "lockfree",
        deps = [
            "align",
            "array",
            "assert",
            "atomic",
            "config",
            "core",
            "integer",
            "mpl",
            "parameter",
            "predef",
            "static_assert",
            "tuple",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "log",
        srcs = [
            "src/attribute_name.cpp",
            "src/attribute_set.cpp",
            "src/attribute_value_set.cpp",
            "src/code_conversion.cpp",
            "src/core.cpp",
            "src/date_time_format_parser.cpp",
            "src/default_attribute_names.cpp",
            "src/default_sink.cpp",
            "src/dump.cpp",
            "src/exceptions.cpp",
            "src/global_logger_storage.cpp",
            "src/once_block.cpp",
            "src/process_id.cpp",
            "src/record_ostream.cpp",
            "src/severity_level.cpp",
            "src/text_ostream_backend.cpp",
            "src/thread_id.cpp",
            "src/thread_specific.cpp",
            "src/trivial.cpp",
        ],
        deps = [
            "config",
            "filesystem",
            "function_types",
            "intrusive",
            "locale",
            "mp11",
            "parameter",
            "phoenix",
            "predef",
            "random",
            "spirit",
            "thread",
        ],
    ),

    boost_library(
        name = "logic",
    ),

    boost_library(
        name = "math",
        deps = ["predef"],
    ),

    boost_library(
        name = "move",
        deps = [
            "core",
            "static_assert",
        ],
        sha256 = "153a734b71df04b36d7d0fa1905a205d73e4bf6bf4f50018480212ee7172523c",
    ),

    boost_library(
        name = "mp11",
    ),

    boost_library(
        name = "mpl",
        deps = [
            "config",
            "preprocessor",
        ],
    ),

    boost_library(
        name = "multi_index",
        deps = ["serialization"],
    ),

    boost_library(
        name = "multiprecision",
        deps = [
            "assert",
            "config",
            "core",
            "functional",
            "lexical_cast",
            "math",
            "mpl",
            "rational",
            "smart_ptr",
            "throw_exception",
            "type_traits",
            "utility",
        ],
        sha256 = "3f90dbbb1fc0d55ff919ab8c96752d35e252259bcecfca4555322ee09113bdb1",
    ),

    boost_library(
        name = "numeric_conversion",
    ),

    boost_library(
        name = "optional",
        deps = [
            "assert",
            "core",
            "move",
            "static_assert",
            "throw_exception",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "parameter",
    ),

    boost_library(
        name = "phoenix",
        deps = [
            "fusion",
            "proto",
        ],
    ),

    boost_library(
        name = "predef",
    ),

    boost_library(
        name = "preprocessor",
    ),

    boost_library(
        name = "process",
        deps = [
            "algorithm",
            "filesystem",
        ],
        sha256 = "58dd695f90f771ec9a4f0b7339c09077a2856cd805197658ecc630a5de70bce5",
    ),

    boost_library(
        name = "program_options",
        srcs = [
            "src/cmdline.cpp",
            "src/convert.cpp",
            "src/options_description.cpp",
            "src/positional_options.cpp",
            "src/split.cpp",
            "src/utf8_codecvt_facet.cpp",
            "src/value_semantic.cpp",
            "src/variables_map.cpp",
        ],
        deps = [
            "any",
            "config",
            "function",
            "lexical_cast",
            "smart_ptr",
            "tokenizer",
        ],
        sha256 = "33a064a1463bf91b8ba9b3f7d637f763b580e02b0f6f5a8ea84fa98dbd5f78e7",
    ),

    boost_library(
        name = "property_tree",
        deps = [
            "any",
            "format",
            "multi_index",
        ],
        sha256 = "49bb37879d4c9816c1c9feb37cc76a5de7df38d312f739362500f5bd03544c17",
    ),

    boost_library(
        name = "proto",
    ),

    boost_library(
        name = "range",
        deps = [
            "array",
            "assert",
            "concept_check",
            "config",
            "container_hash",
            "core",
            "detail",
            "iterator",
            "mpl",
            "numeric_conversion",
            "optional",
            "preprocessor",
            "regex",
            "static_assert",
            "tuple",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "ratio",
        deps = ["integer"],
    ),

    boost_library(
        name = "rational",
        deps = [
            "assert",
            "integer",
            "static_assert",
            "throw_exception",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "random",
        srcs = [
            "src/random_device.cpp",
        ],
        deps = [
            "assert",
            "config",
            "core",
            "integer",
            "io",
            "iterator",
            "math",
            "mpl",
            "predef",
            "range",
            "system",
            "throw_exception",
            "type_traits",
            "utility",
        ],
    ),

    boost_library(
        name = "regex",
    ),

    boost_library(
        name = "serialization",
    ),

    boost_library(
        name = "smart_ptr",
        deps = [
            "core",
            "predef",
            "throw_exception",
        ],
    ),

    boost_library(
        name = "spirit",
        deps = [
            "assert",
            "core",
            "foreach",
            "fusion",
            "math",
            "mpl",
            "optional",
            "range",
            "regex",
            "smart_ptr",
            "tti",
            "type_traits",
            "utility",
            "variant",
        ],
    ),

    boost_library(
        name = "static_assert",
        deps = ["config"],
        sha256 = "5d2453fe276b87a06e7bbc9b8b453b7fa5ed6646589a45c61198de25bd9dec10",
    ),

    boost_library(
        name = "system",
        srcs = [
            "src/error_code.cpp",
        ],
        deps = [
            "assert",
            "config",
            "core",
            "predef",
            "winapi",
        ],
    ),

    boost_library(
        name = "thread",
        srcs = ["src/future.cpp"] + select({
            "@bazel_tools//src/conditions:windows": [
                "src/win32/thread.cpp",
                "src/win32/thread_primitives.cpp",
                "src/win32/tss_pe.cpp",
            ],
            "//conditions:default": [
                "src/pthread/thread.cpp",
                "src/pthread/once.cpp",
            ],
        }),
        textual_hdrs = select({
            "@bazel_tools//src/conditions:windows": [],
            "//conditions:default": [
                "src/pthread/once_atomic.cpp",
            ],
        }),
        defines = ["BOOST_THREAD_BUILD_LIB"],
        linkopts = select({
            "@bazel_tools//src/conditions:windows": [],
            "//conditions:default": ["-pthread"],
        }),
        deps = [
            "algorithm",
            "atomic",
            "bind",
            "chrono",
            "config",
            "container_hash",
            "core",
            "date_time",
            "exception",
            "function",
            "io",
            "iterator",
            "lexical_cast",
            "move",
            "mpl",
            "optional",
            "system",
            "tuple",
            "type_traits",
            "winapi",
        ],
    ),

    boost_library(
        name = "throw_exception",
        deps = [
            "assert",
            "config",
        ],
    ),

    boost_library(
        name = "tokenizer",
    ),

    boost_library(
        name = "tti",
    ),

    boost_library(
        name = "tuple",
    ),

    boost_library(
        name = "type_index",
        deps = [
            "container_hash",
            "mpl",
            "static_assert",
            "throw_exception",
        ],
    ),

    boost_library(
        name = "type_traits",
        deps = ["static_assert"],
        sha256 = "f5ab104b0f12b3fcc48586164cd0267c437eb8c85584c586bd7000e073ebc690",
    ),

    boost_library(
        name = "typeof",
    ),

    boost_library(
        name = "unordered",
    ),

    boost_library(
        name = "utility",
        deps = [
            "config",
            "core",
            "preprocessor",
            "type_traits",
        ],
    ),

    boost_library(
        name = "variant",
        deps = [
            "move",
            "type_index",
            "utility",
        ],
    ),

    boost_library(
        name = "winapi",
    ),
]

def define_wrapper_libraries():
    for lib in BOOST_LIBRARIES:
        native.cc_library(
            name = lib["name"],
            deps = ["@org_boost_{name}//:{name}".format(**lib)],
        )
