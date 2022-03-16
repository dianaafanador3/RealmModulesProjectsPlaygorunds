// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ModuleSampleDB",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v11),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "ModuleSampleDB",
            targets: ["ModuleSampleDB"]),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-swift", from: "10.24.1")
    ],
    targets: [
      .target(
            name: "ModuleSampleDB",
            dependencies: [.product(name: "RealmSwift", package: "realm-swift")],
            path: "Sources"
      )
    ]
)
