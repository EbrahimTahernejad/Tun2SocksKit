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
      url: "https://github.com/daemooon/Tun2SocksKit/releases/download/2.0.7/HevSocks5Tunnel.xcframework.zip",
      checksum: "1e904fc6c7a15e687948e5132bf4392fb5551f135be8cc67bb92be95d7723015"
    )
  ]
)
