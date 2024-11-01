// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebAppDemo",
    platforms: [
        .iOS(.v14),         // Minimum iOS version
        .macOS(.v11)     // Minimum macOS version
    ],
    products: [
        .executable(
            name: "WebAppDemo",
            targets: ["WebAppDemo"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftWebUI/SwiftWebUI.git", from: "0.3.2"),
        .package(path: "../SharedUIComponentsDemo")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "WebAppDemo",
            dependencies: [
                "SwiftWebUI",
                "SharedUIComponentsDemo"
            ],
            swiftSettings: [
                .define("PLATFORM_SWIFTWEBUI")
            ]
        )
    ]
)
