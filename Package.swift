// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  products: [
    .library(name: "Tun2SocksKit", targets: ["Tun2SocksKit"])
  ],
  targets: [
    .binaryTarget(
      name: "ClashKit",
      url: "https://github.com/daemonomead/Tun2SocksKit/releases/download/1.0.0/Tun2SocksKit.xcframework.zip",
      checksum: "63bf0f0acbcb6ca6bdbc7af73decb9218756fef8c61f95161bbe0c6434f994b1"
    )
  ]
)
