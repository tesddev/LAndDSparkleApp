//
//  Package.swift
//  LAndDSparkleApp
//
//  Created by GIGL-MAC on 03/07/2024.
//

import PackageDescription

// swift-tools-version:5.6
let package = Package(
    name: "LAndDSparkleApp",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "LAndDSparkleApp",
            targets: ["LAndDSparkleApp"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nalexn/ViewInspector", from: "0.9.3")
    ],
    targets: [
        .target(
            name: "LAndDSparkleApp",
            dependencies: ["ViewInspector"],
            path: "Sources")
    ]
)
