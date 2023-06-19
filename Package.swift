// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dto",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Dto",
            targets: ["Dto"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SvenTiigi/ValidatedPropertyKit.git", from: "0.0.4")
    ],
    targets: [
        .target(
            name: "Dto",
            dependencies: [
                .product(name: "ValidatedPropertyKit", package: "ValidatedPropertyKit"),
            ],
            path: "Dto/Sources"
        ),    
    ],
    swiftLanguageVersions: [.v5]
)
