# startupos-binaries
Repo for startup-os binaries

### parseproject_deploy.jar
Built from https://github.com/johnynek/bazel-deps at `d90766f16fa15fe3b9c476c11f9739039d845361` using:

`bazel build //src/scala/com/github/johnynek/bazel_deps:parseproject_deploy.jar`

Can be run as
`java -jar bazel-bin/src/scala/com/github/johnynek/bazel_deps/parseproject.deploy.jar`

### grpc_java_plugin_linux
Created using:
```
docker run -it angular/ngcontainer:0.3.2
git clone https://github.com/grpc/grpc-java.git
cd grpc-java/
bazel build //compiler:grpc_java_plugin
docker ps
<copy ID>
docker cp <ID>:/home/circleci/grpc-java/bazel-bin/compiler/grpc_java_plugin grpc_java_plugin_linux
```
