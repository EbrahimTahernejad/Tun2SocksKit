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
      url: "https://github.com/daemonomead/Tun2SocksKit/releases/download/1.4.0/Tun2SocksKit.xcframework.zip",
      checksum: "8db00c29c8e6a9cfa17d6913688a7c756b0975e9a96ea1906dc8ee24a2aec228"
    )
  ]
)
