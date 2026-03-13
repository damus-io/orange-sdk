// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "orange-sdk",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OrangeSDK",
            targets: ["OrangeSDKFFI", "OrangeSDK"]),
    ],
    targets: [
        .target(
            name: "OrangeSDK",
            dependencies: ["OrangeSDKFFI"],
            path: "bindings/swift/Sources/OrangeSDK"
        ),
        .binaryTarget(
            name: "OrangeSDKFFI",
            url: "https://github.com/damus-io/orange-sdk/releases/download/test-2026-03-12/OrangeSDKFFI.xcframework.zip",
            checksum: "7e5632cf90c49680d691dd761d25051335349677bdbd0b3f396ebd1040d98823",
            )
    ]
)
