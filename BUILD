sh_binary(
    name = "grpc_java_plugin",
    srcs = ["grpc_java_plugin.sh"],
    visibility = ["//visibility:public"],
    data = [
        "grpc_java_plugin_linux",
        "grpc_java_plugin_osx",
    ],
)

java_import(
    name = "bazel_deps_parseproject_deploy_jar",
    jars = ["parseproject_deploy.jar"]
)

java_binary(
    name = "bazel_deps",
    visibility = ["//visibility:public"],
    runtime_deps = [":bazel_deps_parseproject_deploy_jar"],
    main_class = "com.github.johnynek.bazel_deps.ParseProject"
)

sh_binary(
    name = "grpcwebproxy",
    srcs = ["grpcwebproxy.sh"],
    visibility = ["//visibility:public"],
    data = [
        "grpcwebproxy_linux",
        "grpcwebproxy_osx",
    ],
)
