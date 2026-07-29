// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "blaze_flutter_sdk",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "blaze-flutter-sdk", targets: ["blaze_flutter_sdk"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/WSCSports/blaze-specs-ios", exact: "1.19.0")
    ],
    targets: [
        .target(
            name: "blaze_flutter_sdk",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "BlazeSDK", package: "blaze-specs-ios")
            ],
            path: "Sources"
        )
    ]
)
