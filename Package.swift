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
      url: "https://github.com/daemonomead/Tun2SocksKit/releases/download/1.3.0/Tun2SocksKit.xcframework.zip",
      checksum: "dc74baa57371162b251ee2e0483fff9f7e7817c8624d57202b6411ad3b031c90"
    )
  ]
)
