// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.3.0"
let checksum = "f2de2d005a0c32e02becf69ee16b5471039b9065487eb10c2eebaa4bdc9f7414"
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
