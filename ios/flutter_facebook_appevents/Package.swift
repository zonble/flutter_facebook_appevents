// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_facebook_appevents",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "flutter-facebook-appevents", targets: ["flutter_facebook_appevents"])
    ],
    dependencies: [
        .package(url: "https://github.com/facebook/facebook-ios-sdk", from: "14.1.0"),
    ],
    targets: [
        .target(
            name: "flutter_facebook_appevents",
            dependencies: [
                .product(name: "FacebookCore", package: "facebook-ios-sdk"),
            ],
            resources: [
                // If your plugin requires a privacy manifest, for example if it uses any required
                // reason APIs, update the PrivacyInfo.xcprivacy file to describe your plugin's
                // privacy impact, and then uncomment these lines. For more information, see
                // https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
                // .process("PrivacyInfo.xcprivacy"),

                // If you have other resources that need to be bundled with your plugin, refer to
                // the following instructions to add them:
                // https://developer.apple.com/documentation/xcode/bundling-resources-with-a-swift-package
            ]
        )
    ]
)
