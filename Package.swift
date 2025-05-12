// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MoltenAndOpenCV",
    platforms: [
        .macOS(.v11), .iOS(.v12), .macCatalyst(.v16)
    ],
    products: [
        .library(
            name: "MoltenAndOpenCV",
            targets: ["OpenCV", "MoltenVK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "OpenCV",
            url: "https://github.com/insidemaps-org/opencv/releases/download/opencv-framework-insideMaps-4.1.0-with-exr-support-simulator/opencv2.xcframework.zip",
            checksum: "73dea7cb5c6c4dc7b7d5da1eb8339f678495c37933d92158337d46c9ee1e453b"
        ),
        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/insidemaps-org/opencv/releases/download/MoltenVK-1.3.231.1/MoltenVK.zip",
            checksum: "068a8c2158beacf850912dd76f1e4f9594c1754dff7c84422a88eec7c76100eb"
        ),
    ]
)
