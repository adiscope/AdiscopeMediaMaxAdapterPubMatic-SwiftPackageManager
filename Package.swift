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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterPubMaticTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterPubMatic"),
                .target(name: "AdiscopeMediaMaxAdapterPubMaticMediationAdapter"),
                .target(name: "OpenWrapSDK"),
                .target(name: "OMSDK_Pubmatic"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPubMatic",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterPubMatic.zip",
            checksum: "184c9b00a53b65132bed8d9cfc011c64c92ed977b1e08b3c4305682c72a15083"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterPubMaticMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationPubMaticAdapter.xcframework.zip",
            checksum: "99e28e74f0194399241d88f3807d6aa8ea7a8343424f88eb8e8bb661d137ba6a"
        ),
        .binaryTarget(
            name: "OpenWrapSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/OpenWrapSDK.xcframework.zip",
            checksum: "71029ead36a01482354fd47a824755fc5967d7dc3a203bf30d1093b58b056059"
        ),
        .binaryTarget(
            name: "OMSDK_Pubmatic",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/OMSDK_Pubmatic.xcframework.zip",
            checksum: "1e7bc27588037ef3d4de478c0dc9e7231eefbeda5e51e4d5e1fa8d2d084dfefd"
        ),
    ]
)
