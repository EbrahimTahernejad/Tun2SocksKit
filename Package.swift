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
      url: "https://github.com/daemonomead/Tun2SocksKit/releases/download/2.0.5/Tun2SocksKit.xcframework.zip",
      checksum: "b5a6abe70b85453c61d0343f2a8ac8861fd0eb280222e6765fa23f32c599c6ae"
    )
  ]
)
