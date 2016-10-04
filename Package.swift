import PackageDescription

let package = Package(
    name: "LibZMQ",
    pkgConfig: "libzmq",
    providers: [
        .Brew("zeromq"),
        .Apt("libzmq3-dev")
    ]
)
