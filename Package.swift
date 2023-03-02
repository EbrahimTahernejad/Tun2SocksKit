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
      url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/2.0.4/Tun2SocksKit.xcframework.zip",
      checksum: "fefeebdd9861fc48e25e5f0e054ff6e4b86befd0efe32dc5a8b565312f62c838"
    )
  ]
)
