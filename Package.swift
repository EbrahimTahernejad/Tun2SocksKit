// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit"]
    ),
    .library(
        name: "Tun2SocksKitC",
        targets: ["Tun2SocksKitC"]
    )
  ],
  targets: [
    .target(
        name: "Tun2SocksKit",
        dependencies: ["HevSocks5Tunnel", "Tun2SocksKitC"]
    ),
    .target(
        name: "Tun2SocksKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/5.13.0/HevSocks5Tunnel.xcframework.zip",
        checksum: "30c9570a37d08afa9db080d06802968e2f26ffd58aa20fb3d7b5fe34ae35f50b"
    )
  ]
)
