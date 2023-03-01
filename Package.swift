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
      url: "https://github.com/daemonomead/Tun2SocksKit/releases/download/2.0.1/Tun2SocksKit.xcframework.zip",
      checksum: "56735efb30a93f787b66b5472b713ba99ece9dcb7c6063cb1f978977e9bbf1e9"
    )
  ]
)
