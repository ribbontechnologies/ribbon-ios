// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.6.0"
let checksum = "078fda40dc5ae775f954f2cb510cd71070d8cf7a21f3758c51fb53c1a140d0d5"
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
