// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PokedexDomain",
    platforms: [.iOS(.v13), .macOS(.v10_15)],
    products: [
        .library(
            name: "PokedexDomain",
            targets: ["PokedexDomain"]),
    ],
    targets: [
        .target(
            name: "PokedexDomain",
            dependencies: []),
        .testTarget(
            name: "PokedexDomainTests",
            dependencies: ["PokedexDomain"]),
    ]
)
