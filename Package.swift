// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDBSnapshotTesting",
    platforms: [
      .iOS(.v11),
      .macOS(.v10_10),
      .tvOS(.v11)
    ],
    products: [
        .library(
            name: "GRDBSnapshotTesting",
            targets: ["GRDBSnapshotTesting"]),
    ],
    dependencies: [
        .package(url: "https://github.com/groue/GRDB.swift.git", .upToNextMajor(from: "4.1.0")),
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", .upToNextMajor(from: "1.8.0")),
    ],
    targets: [
        .target(
            name: "GRDBSnapshotTesting",
            dependencies: ["GRDB", "SnapshotTesting"],
            path: "GRDBSnapshotTesting/Sources")
    ]
)
