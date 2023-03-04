// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "Tun2SocksKit", targets: ["Tun2SocksKit"]),
    .library(name: "HevSocks5Tunnel", targets: ["HevSocks5Tunnel"])
  ],
  targets: [
    .target(name: "Tun2SocksKit", dependencies: ["HevSocks5Tunnel"]),
    .binaryTarget(
      name: "HevSocks5Tunnel",
      url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/2.1.3/HevSocks5Tunnel.xcframework.zip",
      checksum: "cd1c210e005c25887645656887f0bf818003e2858ae4c1a2f3010efe28c8a202"
    )
  ]
)
