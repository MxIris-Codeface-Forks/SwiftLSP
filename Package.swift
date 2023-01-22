// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "SwiftLSP",
    platforms: [.iOS(.v13), .tvOS(.v13), .macOS(.v10_15), .watchOS(.v6)],
    products: [
        .library(
            name: "SwiftLSP",
            targets: ["SwiftLSP"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/flowtoolz/FoundationToolz.git",
            exact: "0.1.7"
        ),
        .package(
            url: "https://github.com/flowtoolz/SwiftyToolz.git",
            exact: "0.3.0"
        )
    ],
    targets: [
        .target(
            name: "SwiftLSP",
            dependencies: ["FoundationToolz", "SwiftyToolz"],
            path: "Sources"
        ),
        .testTarget(
            name: "SwiftLSPTests",
            dependencies: ["SwiftLSP", "FoundationToolz", "SwiftyToolz"],
            path: "Tests"
        ),
    ]
)
