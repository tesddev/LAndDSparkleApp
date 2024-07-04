// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "LAndDSparkleApp",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "LAndDSparkleApp",
            targets: ["LAndDSparkleApp"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "LAndDSparkleApp",
            dependencies: [],
            path: "Sources")
    ]
)
