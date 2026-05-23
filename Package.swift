// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "FusionStack",

    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],

    products: [
        .library(
            name: "FusionStack",
            targets: ["FusionStack"]
        )
    ],

    targets: [

        .target(
            name: "FusionStack",
            path: "Sources/NovaFusionDB"
        ),

        .testTarget(
            name: "FusionStackTests",
            dependencies: ["FusionStack"],
            path: "Tests/NovaFusionDBTests"
        )
    ]
)
