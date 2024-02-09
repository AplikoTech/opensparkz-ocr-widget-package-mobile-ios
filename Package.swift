// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenSparkzPackage",
    platforms: [
        .iOS(.v16)
    ],
    products: [
      .library(
        name: "OpenSparkzFrame",
        targets: ["OpenSparkzFrame"]),
    ],
    targets: [
      .binaryTarget(
        name: "OpenSparkzFrame",
        path: "./OpenSparkzFrame.xcframework")
    ]
)
