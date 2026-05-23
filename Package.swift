// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "FusionStack",

    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],

    products: [
        .executable(
            name: "FusionStack",
            targets: ["FusionStack"]
        )
    ],

    targets: [

        .executableTarget(
            name: "FusionStack",
            path: "Sources/NovaFusionDB"
        ),

        .testTarget(
            name: "FusionStackTests",
            dependencies: ["FusionStack"],
            path: "Tests"
        )
    ]
)
