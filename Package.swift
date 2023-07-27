// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "CocoaSSDP",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13),
        .watchOS(.v4),
        .tvOS(.v11)
    ],
    products: [
        .library(
            name: "CocoaSSDP",
            targets: ["CocoaSSDP"]),
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", branch: "master"),
        .package(url: "https://github.com/erikdoe/ocmock", branch: "master"),
    ],
    targets: [
        .target(
            name: "CocoaSSDP",
            dependencies: ["CocoaAsyncSocket"]),
        .testTarget(
            name: "CocoaSSDPTests",
            dependencies: [
                "CocoaSSDP",
                "CocoaAsyncSocket",
                .product(name: "OCMock", package: "ocmock")
            ],
            resources: [
            ]),
    ]
)
