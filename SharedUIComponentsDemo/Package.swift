// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SharedUIComponentsDemo",
    platforms: [
        .iOS(.v13),         // Minimum iOS version
        .macOS(.v10_15)     // Minimum macOS version
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SharedUIComponentsDemo",
            targets: ["SharedUIComponentsDemo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftWebUI/SwiftWebUI.git", from: "0.3.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SharedUIComponentsDemo",
            dependencies: [
                "SwiftWebUI"
            ]
        ),

    ]
)
