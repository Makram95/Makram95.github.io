// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Makram95GithubIo",
    products: [
        .executable(
            name: "Makram95GithubIo",
            targets: ["Makram95GithubIo"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "Makram95GithubIo",
            dependencies: ["Publish"]
        )
    ]
)