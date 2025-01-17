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
        .package(url: "https://github.com/SvenTiigi/ValidatedPropertyKit.git", from: "0.0.7")
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

//import PackageDescription
//
//let package = Package(
//    name: "MyLibrary",
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(
//            name: "MyLibrary",
//            targets: ["MyLibrary"]),
//    ],
//    dependencies: [
//        // Dependencies declare other packages that this package depends on.
//        // .package(url: /* package url */, from: "1.0.0"),
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
//        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(
//            name: "MyLibrary",
//            dependencies: []),
//        .testTarget(
//            name: "MyLibraryTests",
//            dependencies: ["MyLibrary"]),
//    ]
//)
