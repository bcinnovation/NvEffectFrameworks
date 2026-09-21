// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "NvEffectFrameworks",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NveEffectKit",
            targets: ["NveEffectKit"]
        ),
        .library(
            name: "NvEffectSdkCore",
            targets: ["NvEffectSdkCore"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "NveEffectKit",
            path: "Frameworks/NveEffectKit.xcframework"
        ),
        .binaryTarget(
            name: "NvEffectSdkCore",
            path: "Frameworks/NvEffectSdkCore.xcframework"
        )
    ]
)
