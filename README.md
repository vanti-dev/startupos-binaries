# startupos-binaries
Repo for startup-os binaries. Binaries are stored as GitHub releases.

### parseproject_deploy.jar
Built from https://github.com/johnynek/bazel-deps using:
`git checkout e3f77e22d9f5b070915067a766607cfc96835c98`
`bazel build //src/scala/com/github/johnynek/bazel_deps:parseproject_deploy.jar`

Can be run as
`java -jar bazel-bin/src/scala/com/github/johnynek/bazel_deps/parseproject_deploy.jar`

### grpc_java_plugin_linux
Created using:
```
git clone https://github.com/grpc/grpc-java.git
cd grpc-java/
git reset --hard v1.16.1
bazel build --incompatible_remove_native_http_archive=false --incompatible_package_name_is_a_function=false //compiler:grpc_java_plugin
cp bazel-bin/compiler/grpc_java_plugin grpc_java_plugin_linux
```

### grpc_java_plugin_osx
Follow instructions above, skipping the docker commands.
Result should be at `bazel-bin/compiler/grpc_java_plugin`


### grpcwebproxy_linux
Translates grpc-web HTTP/1.1 requests to gRPC server.

Install `go` and `dep` (https://github.com/golang/dep)
```
go get -u github.com/improbable-eng/grpc-web/go/grpcwebproxy
cd $(go env GOPATH)/src/github.com/improbable-eng/grpc-web
dep ensure
cd go/grpcwebproxy/
CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags "-static"'
mv grpcwebproxy grpcwebproxy_linux
```

### grpcwebproxy_mac
Same as above, except for the last 2 commands:
```
CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"'
mv grpcwebproxy grpcwebproxy_mac
```

### clang-format
There doesn't seem to be a separate release for `clang-format`, and the entire toolchain weighs ~300mb.
To save the heavy download, we extract the `clang-format`, which is ~2mb:

```
wget https://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
tar -xf clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04/bin/clang-format
cp clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04/bin/clang-format clang_format_bin

wget https://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz
tar -xf clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz clang+llvm-6.0.0-x86_64-apple-darwin/bin/clang-format
cp clang+llvm-6.0.0-x86_64-apple-darwin/bin/clang-format clang_format_bin_osx
```
