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
      url: "https://github.com/daemooon/Tun2SocksKit/releases/download/2.0.9/HevSocks5Tunnel.xcframework.zip",
      checksum: "d9d08f3735f05d0325bde86f0ed557ca30278d0fd363d014f470c59a4c7bf08d"
    )
  ]
)
