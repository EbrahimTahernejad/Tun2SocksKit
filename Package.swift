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
        url: "https://github.com/daemooon/Tun2SocksKit/releases/download/2.2.0/HevSocks5Tunnel.xcframework.zip",
        checksum: "f5a0edb493fd689c871e109f47eb8959bbe02b4a7d94a827df97dd47e8a1bba6"
    )
  ]
)
