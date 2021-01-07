load("@rules_cc//cc:defs.bzl", "cc_library")
load("@rules_python//python:python.bzl", "py_binary")

py_binary(
    name = "pygen",
    srcs = glob(["**/*.py"]),
    data = glob([
        "**/*.xml",
        "**/*.h",
    ]),
    main = "__main__.py",
)

genrule(
    name = "gen",
    outs = [
        "glad.h",
        "glad.c",
        "khrplatform.h",
    ],
    cmd = "$(location :pygen) --quiet --profile core --spec gl --api gl=4.6 --generator=c --reproducible --local-files --out-path=\"$(@D)\"",
    tools = [":pygen"],
)

cc_library(
    name = "glad",
    srcs = [":glad.c"],
    hdrs = [
        ":glad.h",
        ":khrplatform.h",
    ],
    includes = ["."],
    visibility = ["//visibility:public"],
)
