// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ios-demo",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .executable(name: "ios-demo", targets: ["ios-demo"])
    ],
    targets: [
        .executableTarget(
            name: "ios-demo",
            path: "Sources/ios-demo",
            resources: [
                .process("Resources/Assets.xcassets"),
                .process("Resources/Info.plist")
            ]
        )
    ]
)