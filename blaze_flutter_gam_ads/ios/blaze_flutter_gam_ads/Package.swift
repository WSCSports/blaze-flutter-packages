// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "blaze_flutter_gam_ads",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "blaze-flutter-gam-ads", targets: ["blaze_flutter_gam_ads"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(name: "blaze_flutter_sdk", path: "../blaze_flutter_sdk"),
        .package(url: "https://github.com/WSCSports/blaze-specs-ios", exact: "1.19.0")
    ],
    targets: [
        .target(
            name: "blaze_flutter_gam_ads",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "blaze-flutter-sdk", package: "blaze_flutter_sdk"),
                .product(name: "BlazeGAM", package: "blaze-specs-ios")
            ],
            path: "Sources"
        )
    ]
)
