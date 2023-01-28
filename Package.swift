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
            name: "noelle",
            targets: ["noelle"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", branch: "develop")
    ],
    targets: [
        .target(
            name: "noelle",
            dependencies: ["SnapKit"]),
        .testTarget(
            name: "noelleTests",
            dependencies: ["noelle"]),
    ]
)
