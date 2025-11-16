// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "AttributedString-Encoder",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "AttributedStringEncoder",
            targets: ["AttributedStringEncoder"]
        ),
        .library(
            name: "NSAttributedStringEncoder",
            targets: [
                "AttributedStringEncoder",
                "NSAttributedStringEncoder"
            ]
        ),
    ],
    targets: [
        .target(
            name: "AttributedStringEncoder"
        ),
        .target(
            name: "NSAttributedStringEncoder",
            dependencies: ["AttributedStringEncoder"]
        ),
        
        .testTarget(
            name: "AttributedStringEncoderTests",
            dependencies: ["AttributedStringEncoder"]
        ),
    ]
)
