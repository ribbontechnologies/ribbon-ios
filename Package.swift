// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.9.9-beta.1"
let checksum = "10f72b8788c34724df519b1066bbaec144487adc7cf55687cdd4ffbc090a5eab"
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
