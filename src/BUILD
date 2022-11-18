load("@rules_cc//cc:defs.bzl", "cc_binary")

cc_binary(
    name = "main",
    srcs = ["main.cpp"],
    copts = ["-std=c++14"],
    deps = ["//src/foo_dir:foo"]
)