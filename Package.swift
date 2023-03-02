// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  products: [
    .library(name: "Tun2SocksKit", targets: ["Tun2SocksKit"])
  ],
  targets: [
    .binaryTarget(
      name: "Tun2SocksKit",
      url: "https://github.com/daemonomead/Tun2SocksKit/releases/download/2.0.2/Tun2SocksKit.xcframework.zip",
      checksum: "8c694d5ddde4d0be95a675c9f3813ac2df580f042b7b44a6ae305c9c364e7c48"
    )
  ]
)
