// swift-tools-version:5.3
//
import PackageDescription

let package = Package(
    name: "WalletKitSwift",
    platforms: [
        .iOS(.v11),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "WalletKitSwift",
            targets: ["WalletKitSwift"]
        ),
    ],

    dependencies: [
        .package(name: "WalletKitCore", url: "https://github.com/fabriik/WalletKitCore", .branchItem("rcresnik/chore/initial"))
    ],

    targets: [
        .target(
            name: "WalletKitSwift",
            dependencies: [
                .product(name: "WalletKitCore", package: "WalletKitCore"),
            ],
            path: "WalletKit"
        ),
    ]
)
