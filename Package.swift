// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PaversRE",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PaversRE",
            targets: ["PaversRE"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
      .package(url: "https://github.com/KeithPiTsui/PaversFRP.git", from: "1.0.0"),
      .package(url: "https://github.com/KeithPiTsui/PaversSugar.git", from: "1.0.0"),
      .package(url: "https://github.com/KeithPiTsui/PaversParsec.git", from: "1.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "PaversRE",
            dependencies: ["PaversFRP", "PaversSugar", "PaversParsec"]),
        .testTarget(
            name: "PaversRETests",
            dependencies: ["PaversRE"]),
    ]
)
