java_import(
    name = "parseproject_deploy_jar",
    jars = ["parseproject_deploy.jar"]
)

java_binary(
    name = "parse",
    visibility = ["//visibility:public"],
    runtime_deps = [":parseproject_deploy_jar"],
    main_class = "com.github.johnynek.bazel_deps.ParseProject"
)

