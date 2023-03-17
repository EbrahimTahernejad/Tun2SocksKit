// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  platforms: [.iOS(.v12)],
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit"]
    )
  ],
  targets: [
    .target(
        name: "Tun2SocksKit",
        dependencies: ["Tun2SocksKitC", "HevSocks5Tunnel"]
    ),
    .target(
        name: "Tun2SocksKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        url: "https://github.com/daemooon/Tun2SocksKit/releases/download/2.1.14/HevSocks5Tunnel.xcframework.zip",
        checksum: "67f4a0b3c57f86a4453dd344989a6f3ca4e3ac3255d2b55163985ac686b1d01b"
    )
  ]
)
