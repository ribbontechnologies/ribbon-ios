// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0-beta.2"
let checksum = "8d2604818f03fe78119cbe639a840136cc8fade6acbd5cd55127924e93162b87"
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
