// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterPubMatic",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterPubMatic",
            targets: ["AdiscopeMediaMaxAdapterPubMaticTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
        .package(url: "https://github.com/PubMatic/OpenWrapSDK-Swift-Package.git", exact: "5.1.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterPubMaticTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterPubMatic"),
                .target(name: "AdiscopeMediaMaxAdapterPubMaticMediationAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "OpenWrapSDK", package: "OpenWrapSDK-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPubMatic",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AdiscopeMediaMaxAdapterPubMatic.zip",
            checksum: "a1c393c56f94d1717d72d5aca20a98aab1c7518910d80d6fdc4fa1f45d5b7f58"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPubMaticMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AppLovinMediationPubMaticAdapter.xcframework.zip",
            checksum: "2dbf3358198743e32f495f77d6a79e7625aed7fab22bffe6a7f8625cb5e55deb"
        ),
    ]
)
