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
      url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/2.1.2/HevSocks5Tunnel.xcframework.zip",
      checksum: "de1f62b5fe7ee883b2f7aef42395b01bddb72bd0c8ed4245984da03163b7ebf0"
    )
  ]
)
