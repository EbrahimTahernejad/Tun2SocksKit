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
      url: "https://github.com/daemooon/Tun2SocksKit/releases/download/2.1.0/HevSocks5Tunnel.xcframework.zip",
      checksum: "f59ba81962995f2953af011f67f9ee8db3d26fe615187e4f9b6104dd2fe2bde8"
    )
  ]
)
