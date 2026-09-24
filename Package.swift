// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "XMediatorLevelPlayPangleAdapterCompatibility",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "LevelPlayPangleAdapter", targets: ["LevelPlayPangleAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Pangle-Adapter-Swift-Package.git", exact: "5.32.0"),
    ],
    targets: [
        .target(
            name: "LevelPlayPangleAdapterWrapper",
            dependencies: [
                .product(
                    name: "PangleAdapter",
                    package: "LevelPlay-Pangle-Adapter-Swift-Package",
                    moduleAliases: ["PangleAdapter": "LevelPlayPangleAdapterTarget"]
                ),
            ]
        ),
    ]
)
