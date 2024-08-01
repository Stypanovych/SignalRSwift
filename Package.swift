// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "SignalRSwift",
    platforms: [.iOS(.v12), .macOS(.v10_13)],
    products: [
        .library(name: "SignalRSwift", targets: ["SignalRSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.1"),
    ],
    targets: [
        .target(
            name: "SignalRSwift",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
            ], 
            path: "Source"
        ),
    ]
)
