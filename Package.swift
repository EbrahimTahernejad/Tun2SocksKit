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
      url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/2.1.5/HevSocks5Tunnel.xcframework.zip",
      checksum: "a2a6d12482f7feed353fcd8f456cf9777779282d9ae04359da8cf8b34f12d893"
    )
  ]
)
