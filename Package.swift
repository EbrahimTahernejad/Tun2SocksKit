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
      url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/2.0.3/Tun2SocksKit.xcframework.zip",
      checksum: "6c4dfa204dd0fe79586af78fd30fd1d7061ef0fe7b26471d724e378050d9008e"
    )
  ]
)
