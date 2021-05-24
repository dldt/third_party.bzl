# Inspired by https://github.com/oceboy233/boost

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
        sha256 ="8b1da8d3eacba0dad3266745ab46d0a3f22a8c498ceb583837db34d9465a0662",
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
        sha256 = "176ab3ea2e6b4197a6126a33cb0654102d1be72420d8df05f5132d45b52e9d12",
    ),

    boost_library(
        name = "any",
        deps = [
            "throw_exception",
            "type_index",
        ],
        sha256 = "097eff0b5c7d1c0ddc3b266014f64a40909be830455c786a3863478723ac3c13",
    ),

    boost_library(
        name = "array",
        deps = ["throw_exception"],
        sha256 = "d13b7664cdaebc57d6abf3aa7beb7f3e1b767b1c9e8b1ecbd0d17e7bd4ba1b5f",
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
        sha256 = "2be9be8103a20b4c79d0c7ee0dc060f7f19b214b17a1b23a02ec908f662db97c",
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
        sha256 = "2df80851bb6ee8a9cb9e3b4e1b5a9cbe3cd873247c9fc0781168ce53064d8761",
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
        sha256 = "c53306ea323abb5ae97d03593f8313ef988f8350dcb138791f0b3c7f14efd88a",
    ),

    boost_library(
        name = "bind",
        sha256 = "e8c64d7153816b933cbf68cd5528822c5b836f07f3ff66fedfe8514f30672ca9",
    ),

    boost_library(
        name = "chrono",
        deps = ["ratio"],
        sha256 = "24e43106f2ae239225514695488371a4056d9809d29d423f2af0abbd14554dca",
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
        sha256 = "7021b2a8ed864bd58bf162c1ac805fa9d52e487c6fbde9395728751eeab95c60",
    ),

    boost_library(
        name = "concept_check",
        sha256 = "07c03808ba8a5557044133630a7b398e73c6e96cdd1e87cc42edafaf0aea7739",
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
        sha256 = "41705f3d3b88b43bbf75fc6797c96f94cfb9b98bb61ddcf931a146fa9d23bdf9",
    ),

    boost_library(
        name = "detail",
        sha256 = "ca977746b9f001f81278ad427c9bb21e0a61e8046fea601ca64987fe3a0c16a3",
    ),

    boost_library(
        name = "exception",
        sha256 = "f4f91409046206ef3d638e12d6324a48ba4e5eac7c29a329f958d551d89453fa",
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
        sha256 = "8c00cc3f1c987533bc9121a10bdf1663dec7879cc2839738e844f42c9b42debf",
    ),

    boost_library(
        name = "foreach",
        sha256 = "555d88bdf3d1cd9d1de37a767449c850b22214bde65937bc809c23f3ef02b69d",
    ),

    boost_library(
        name = "format",
        sha256 = "d2c59045b3e09a6821fdc204acc7bc29fe9ee2876be5b5263b74b42d8004c7d1",
    ),

    boost_library(
        name = "function",
        deps = [
            "bind",
            "move",
            "type_index",
        ],
        sha256 = "394115a0bcbc10dfe80625931a1a4016d9ff71ccf496d8c1a8b308c11db3177d",
    ),

    boost_library(
        name = "function_types",
        sha256 = "0ba19f77c5991b33554a3b779ef8e385500a304873d14bcc72347e7aca156a05",
    ),

    boost_library(
        name = "functional",
        deps = [
            "config",
            "utility",
        ],
        sha256 = "57465966b41f60bc7f22c3a29d96b22ffcfb0e4ffa9100622d5ed6afbcb0f344",
    ),

    boost_library(
        name = "fusion",
        deps = [
            "typeof",
        ],
        sha256 = "79ecfba2736fec72c2141e1c778331f00f0c12fe6f8f613f674f18fa954840b0",
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
        sha256 = "5f45e065c88e6ec1e55abca860b65168d342b8e7565b94761134fdf3a68bf592",
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
        sha256 = "d35ee68620899010762c47556db76d2d9980f84518a94308e3d3c3d2f17e6298",
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
        sha256 = "a01e5168eb24dd1b911c283f17303ab74d58f9271c0dfdbc14cb70419e262522",
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
        sha256 = "56695c98850f1abd59d230d764b69701539e74b4d450889e62be54f01b91aa54",
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
        sha256 = "ee66f2ca9d564d0f22551e89878681d2c207f99cf4018fbd1f752d07efe85a05",
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
        sha256 = "9d810705e9773eede399970ce9f229e56ae0bbc1a18bc704221ad64ad6581b23",
    ),

    boost_library(
        name = "locale",
        sha256 = "f393c051e4bb0db258732ff466d43a24f345cf3ca7a590cb3989df19cb0b9824",
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
        sha256 = "6a8949d513ec43ce4bf2fd417ee6da2808eddf2c9817098a1b532e7f631a1ec2",
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
        sha256 = "33c1fb0ddb6c2cfc983882f0055c0c9c7c0c59b5c88eb4ff1579683a5662a661",
    ),

    boost_library(
        name = "logic",
        sha256 = "5d35d7f61c89701f0bb33097e70d2d27676d19f061ba719605a3eff07e72cb17",
    ),

    boost_library(
        name = "math",
        deps = ["predef"],
        sha256 = "acfec7b58671bd1b408795cf1efd038e6de0097bf4c201cc2a6c1fa9abbc6e69",
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
        sha256 = "0e968855fbc33c6daeed95de8a92469ebdac97d095b71c40c917e9c6b06e9741",
    ),

    boost_library(
        name = "mpl",
        deps = [
            "config",
            "preprocessor",
        ],
        sha256 = "c58f606a73c8cf51759a12f25a3b692fc2397a63add2cfd99a4dc483dac23f83",
    ),

    boost_library(
        name = "multi_index",
        deps = ["serialization"],
        sha256 = "8939e014eb166f177f2243c0a37c07543c573132c4c4e9277c4d660703493989",
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
        sha256 = "32efff5b77c1ee688a03f943dd3d1930198baddd7422177251ebe2b2ad930d71",
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
        sha256 = "89ba254731ed871e7b45333690b0eda3144c907ec5edbfeab7291bdc49505e84",
    ),

    boost_library(
        name = "parameter",
        sha256 = "cd2ec5d783f6d163742a8abdba9a276d8a2689148cd573bdd78cd4f150e0d204",
    ),

    boost_library(
        name = "phoenix",
        deps = [
            "fusion",
            "proto",
        ],
        sha256 = "7e5119646a734299c5a09d11739235f6427ce2ed8c3a60db313bf6e2adea639c",
    ),

    boost_library(
        name = "predef",
        sha256 = "bf793c42654d108601d61554dc8d9c7aa432be1bd1ba07830df8dc37ad171004",
    ),

    boost_library(
        name = "preprocessor",
        sha256 = "0e03b946184a66a5c95454f4ccc9e5a83bd7fd101eb32cd17ac17b385ab56015",
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
        sha256 = "086d32bd0f583ba8b2beec08fe2bfe7141097aa8431b20664a765a9271a81b8e",
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
        sha256 = "39566e57e2344b03f9bbaa8f28030c794b39159526ae04b5749d026961c33d94",
    ),

    boost_library(
        name = "ratio",
        deps = ["integer"],
        sha256 = "91e0342d056dc06b3874349e8028d9cad791d40ae8e0b6a669582e72712c36b5",
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
        sha256 = "629f304101088df8252e206abb1c9e2c8e9669f3dee1d71ba028e197bafe454f",
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
        sha256 = "55604d695b7eadc6d4343ba9e3ba57b2259985f0783ef9194287f6064bc2815c",
    ),

    boost_library(
        name = "regex",
        sha256 = "0898e1644a98e87d986a6f56f89984cc1d3a46a81442f14c1bba7515dfc4907e",
    ),

    boost_library(
        name = "serialization",
        sha256 = "a3ffb0223e68a3373af9c7a9cf8d11e21d5bda3469e91c885a7fb83f614af80e",
    ),

    boost_library(
        name = "smart_ptr",
        deps = [
            "core",
            "predef",
            "throw_exception",
        ],
        sha256 = "de111a8d7729af48db41d3a5663e5987ef92b1b2cc543c58c3a1cb33af0866fb",
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
        sha256 = "eb33491b8c65084368e749b1282e35a987cb3892b1680a9642383ad478effde0",
    ),

    boost_library(
        name = "stacktrace",
        sha256 = "c085f29d9b330de52b95021a83a75812dce644b3cd769cbfe14a150e7d00bcc8",
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
        sha256 = "5e43089195fa9039c67ff0783967ec7ed5d5ff153202ef37138683e78bad31f7",
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
        sha256 = "34884d26f71ef823a977c034797933294de8a47d3294eee329e5e903d3e1560d",
    ),

    boost_library(
        name = "throw_exception",
        deps = [
            "assert",
            "config",
        ],
        sha256 = "fb013442e8d96dac8f07c85d77928fc87a257ccac7385be2d657a32edcec0613",
    ),

    boost_library(
        name = "tokenizer",
        sha256 = "dda77c54fa6b7010a190f56de9143569ac87b2fec3ebc1480c17b05a923b7fe7",
    ),

    boost_library(
        name = "tti",
        sha256 = "917bbd61aaa871def372186e93b0496b953b813119817e287a246ed679b594de",
    ),

    boost_library(
        name = "tuple",
        sha256 = "2934ff0f8705b21d5f21c0d8b8e44f98d38c8a5a514b86fab510a127e1d46ee9",
    ),

    boost_library(
        name = "type_index",
        deps = [
            "container_hash",
            "mpl",
            "static_assert",
            "throw_exception",
        ],
        sha256 = "49b928cfaf5a637571e23c7aeef216a70ebd30318e3fbc140e39dd845a28d3b1",
    ),

    boost_library(
        name = "type_traits",
        deps = ["static_assert"],
        sha256 = "f5ab104b0f12b3fcc48586164cd0267c437eb8c85584c586bd7000e073ebc690",
    ),

    boost_library(
        name = "typeof",
        sha256 = "2b517274e2f896c7e5cc3823934e863970ef5bd1119a8d756767529fe816fd15",
    ),

    boost_library(
        name = "unordered",
        sha256 = "ae4038cee302a65b4d9ddf3f9c2b908749b243b8ecbd14d77937bbf5da662fe0",
    ),

    boost_library(
        name = "utility",
        deps = [
            "config",
            "core",
            "preprocessor",
            "type_traits",
        ],
        sha256 = "324c925b465cbe7e6ce0d696fad1d631f3d2489477811910c068f0dc6327551d",
    ),

    boost_library(
        name = "variant",
        deps = [
            "move",
            "type_index",
            "utility",
        ],
        sha256 = "5feb8e3dd2882b00af858a1144950a501fae293d4849cb5e6a520f64dabc7560",
    ),

    boost_library(
        name = "winapi",
        sha256 = "9dd344f662783a86880f30489fe4f7db9b92761f6593914e0b803b747eaa357d",
    ),
]

def define_wrapper_libraries():
    for lib in BOOST_LIBRARIES:
        native.cc_library(
            name = lib["name"],
            deps = ["@org_boost_{name}//:{name}".format(**lib)],
        )
