// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  products: [
    .library(name: "HevSocks5Tunnel", targets: ["HevSocks5Tunnel"])
  ],
  targets: [
    .binaryTarget(
      name: "HevSocks5Tunnel",
      url: "https://github.com/daemooon/Tun2SocksKit/releases/download/2.0.6/HevSocks5Tunnel.xcframework.zip",
      checksum: "b0f5fd383dddf386f84ae0d161f99a6e155c054d07d83fdf48a47954f60fd1ab"
    )
  ]
)
