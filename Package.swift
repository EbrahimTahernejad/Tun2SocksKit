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
      url: "https://github.com/daemonomead/Tun2SocksKit/releases/download/1.2.0/Tun2SocksKit.xcframework.zip",
      checksum: "28655d4d66d1fde4319767268ba130ddbeb90bdf5fb08d21911581da5f1eb2c1"
    )
  ]
)
