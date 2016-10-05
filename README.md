# LibZMQ

[![Swift][swift-badge]][swift-url]
[![Platform][platform-badge]][platform-url]
[![License][mit-badge]][mit-url]

This package provides a low-level Swift bindings for the
[`libzmq`](https://github.com/zeromq/libzmq) library.

## Example

```swift
import LibZMQ

// Report ZeroMQ library version
var major: Int32 = 0
var minor: Int32 = 0
var patch: Int32 = 0
zmq_version(&major, &minor, &patch)
print("Version is \(major),\(minor),\(patch)")
```

## Usage

Your `Package.swift` should be something like the following code to be able to
use this package:

```swift
import PackageDescription

let package = Package(
    name: "YourPackageName",
    dependencies: [
        .Package(
            url          : "https://github.com/azawawi/swift-libzmq.git",
            majorVersion : 0,
            minor        : 1
        )
    ]
)
```

## Installation

ZeroMQ library `libzmq` is needed. Please follow the platform-specific
instructions shown below to install it:

- On MacOS, please type:
```
$ brew update
$ brew install zeromq
```

- On Ubuntu linux, please type:
```
$ sudo apt-get install libzmq3-dev
```

## See Also

- [Zewo's ZeroMQ swift bindings](https://github.com/ZewoGraveyard/ZeroMQ)

## Author

[Ahmad M. Zawawi](https://github.com/azawawi)

## License

MIT License

[swift-badge]: https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat
[swift-url]: https://swift.org
[platform-badge]: https://img.shields.io/badge/Platforms-OS%20X%20--%20Linux-lightgray.svg?style=flat
[platform-url]: https://swift.org
[mit-badge]: https://img.shields.io/badge/License-MIT-blue.svg?style=flat
[mit-url]: https://tldrlegal.com/license/mit-license
