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
      url: "https://github.com/daemonomead/Tun2SocksKit/releases/download/1.1.0/Tun2SocksKit.xcframework.zip",
      checksum: "b950e9a3f01c9a184626835cf1ccf4b802022d21186dd8816c5b9622bf70b80e"
    )
  ]
)
