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
      url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/2.1.4/HevSocks5Tunnel.xcframework.zip",
      checksum: "6177b1b4f228d4953456d42319c24ad052bc903b339952dcd8087c740b8c7e20"
    )
  ]
)
