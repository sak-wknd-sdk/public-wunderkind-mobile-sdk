// swift-tools-version:5.5

import PackageDescription
let package = Package(
    name: "Wunderkind",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "Wunderkind",
            targets: ["Wunderkind"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "Wunderkind",
            url: "https://storage.googleapis.com/wunderkind-ios-sdk/3.0.0.zip",
            checksum: "9a58d041745235908e0e41274683e8fc46745f5daa1a62a46e55d53b4e15ab8d"
        )
    ]
)

