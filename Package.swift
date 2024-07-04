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
    dependencies: [
        .package(url: "https://github.com/tesddev/ImageShadowPackage.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "LAndDSparkleApp",
            dependencies: ["ImageShadowPackage"],
            path: "Sources")
    ]
)
