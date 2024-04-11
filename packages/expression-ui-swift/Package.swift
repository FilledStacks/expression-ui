// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "ExpressionUI",
    platforms: [.iOS("14.0")],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ExpressionUI",
            targets: ["ExpressionUI"]),
    ],
    dependencies: [
        .package(name: "RiveRuntime", url: "https://github.com/rive-app/rive-ios.git", from: "5.10.0")
    ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ExpressionUI",
            dependencies: ["RiveRuntime"],
            path: "Sources"
        ),
    ]
)
