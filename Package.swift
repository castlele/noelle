// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "noelle",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "Noelle",
            targets: ["noelle"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "noelle",
            dependencies: []),
        .testTarget(
            name: "noelleTests",
            dependencies: ["noelle"]),
    ]
)
