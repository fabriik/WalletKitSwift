// swift-tools-version:5.3
//
import PackageDescription

let package = Package(
    name: "WalletKit",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "WalletKit",
            targets: ["WalletKit"]
        ),
    ],

    dependencies: [
        .package(name: "WalletKit", url: "git@github.com:fabriik/WalletKitCore.git", .upToNextMajor(from: "0.0.1"))
    ],

    targets: [
        .target(
            name: "WalletKit",
            dependencies: [
                "WalletKit"
            ],
            path: "WalletKit"
        ),
    ]
)
