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
      url: "https://github.com/daemonomead/Tun2SocksKit/releases/download/2.0.3/Tun2SocksKit.xcframework.zip",
      checksum: "68050b0cea8daef3193d853a2884c262948358f7450e9505a30968511ce8cad7"
    )
  ]
)
