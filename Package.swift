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
      url: "https://github.com/daemonomead/Tun2SocksKit/releases/download/1.0.0/Tun2SocksKit.xcframework.zip",
      checksum: "d890593373114ecfaa342a81eca4ac7e1d17615bcc71fc213fb6fc098a1a286e"
    )
  ]
)
