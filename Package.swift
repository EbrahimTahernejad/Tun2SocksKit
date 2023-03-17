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
        url: "https://github.com/daemooon/Tun2SocksKit/releases/download/2.1.8/HevSocks5Tunnel.xcframework.zip",
        checksum: "61dce7d65d0c45c9dd02fdb67d2c9b08f2cc07a1e4309c15fe4e2473f3cea42c"
    )
  ]
)
