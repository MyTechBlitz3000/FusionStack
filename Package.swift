// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "NovaFusionDB",
    
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    
    products: [
        .executable(
            name: "NovaFusionDB",
            targets: ["NovaFusionDB"]
        )
    ],
    
    dependencies: [
        
    ],
    
    targets: [
        .executableTarget(
            name: "NovaFusionDB",
            dependencies: [],
            path: "Sources"
        )
    ]
)
