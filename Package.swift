// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  platforms: [.iOS(.v12)],
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit"]
    ),
    .library(
        name: "Tun2SocksKitC",
        targets: ["Tun2SocksKitC"]
    ),
    .library(
        name: "HevSocks5Tunnel",
        targets: ["HevSocks5Tunnel"]
    )
  ],
  targets: [
    .target(name: "Tun2SocksKitC"),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        url: "https://github.com/daemooon/Tun2SocksKit/releases/download/2.1.1/HevSocks5Tunnel.xcframework.zip",
        checksum: "ab1561d535f82f6efffb24076c547c342d4f79827a2add23063b19ffb6437f02"
    ),
    .target(
        name: "Tun2SocksKit",
        dependencies: ["Tun2SocksKitC", "HevSocks5Tunnel"]
    )
  ]
)
