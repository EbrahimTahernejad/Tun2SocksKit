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
      checksum: "e483fcc53c664cf9721ba6bbe2d5e2cad3a32f6225fb4d43084be739fa5d18e9"
    )
  ]
)
