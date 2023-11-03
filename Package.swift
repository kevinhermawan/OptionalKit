// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OptionalKit",
    products: [
        .library(
            name: "OptionalKit",
            targets: ["OptionalKit"]),
    ],
    targets: [
        .target(
            name: "OptionalKit"),
        .testTarget(
            name: "OptionalKitTests",
            dependencies: ["OptionalKit"]),
    ]
)
