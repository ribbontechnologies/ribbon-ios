// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.2"
let checksum = "0f000d08a59d987bea53d212ebd09b8a12554809b9c36bd8fce123c5293f63be"
let moduleName = "RibbonKit"

let package = Package(
    name: moduleName,
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: moduleName,
            targets: [moduleName]),
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/ribbontechnologies/ribbon-ios/releases/download/\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)
