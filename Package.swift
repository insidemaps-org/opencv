// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "OpenCV",
    platforms: [
        .macOS(.v11), .iOS(.v16), .macCatalyst(.v16)
    ],
    products: [
        .library(
            name: "OpenCV",
            targets: ["OpenCV"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "OpenCV",
            url: "https://github.com/insidemaps-org/opencv/releases/download/opencv-framework-insideMaps-4.1.0-with-exr-support-simulator/opencv2.xcframework.zip",
            checksum: "73dea7cb5c6c4dc7b7d5da1eb8339f678495c37933d92158337d46c9ee1e453b"
        ),
    ]
)
