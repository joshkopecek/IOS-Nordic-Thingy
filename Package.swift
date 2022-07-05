// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.
/*
 This source file is part of the Swift.org open source project
 Copyright 2015 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception
 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for Swift project authors
*/

import PackageDescription

let package = Package(
    name: "IOSThingyLibrary",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_14)
    ],
    products: [
        .library(name: "IOSThingyLibrary", targets: ["IOSThingyLibrary"]),
    ],
    dependencies: [
        .package(url: "https://github.com/NordicSemiconductor/IOS-DFU-Library.git", from: "4.11.0"),
    ],
    targets: [
        .target(
            name: "IOSThingyLibrary",
            dependencies: [
                .product(name: "NordicDFU", package: "IOS-DFU-Library")
            ])
    ]
)
