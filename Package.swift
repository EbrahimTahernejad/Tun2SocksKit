// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  products: [
    .library(name: "Tun2SocksKit", targets: ["Tun2SocksKit"]),
    .library(name: "HevSocks5Tunnel", targets: ["HevSocks5Tunnel"])
  ],
  targets: [
    .target(name: "Tun2SocksKit", dependencies: ["HevSocks5Tunnel"]),
    .binaryTarget(
      name: "HevSocks5Tunnel",
      url: "https://github.com/daemooon/Tun2SocksKit/releases/download/2.0.8/HevSocks5Tunnel.xcframework.zip",
      checksum: "159f206f720ea0b66575f5cb158b450bcd0f038fbc266bc2659aff2cab56cf54"
    )
  ]
)
