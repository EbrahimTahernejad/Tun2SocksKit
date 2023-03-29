// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  platforms: [.iOS(.v12), .macOS(.v12)],
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit", "Tun2SocksKitC"]
    )
  ],
  targets: [
    .target(
        name: "Tun2SocksKit",
        dependencies: ["HevSocks5Tunnel"]
    ),
    .target(
        name: "Tun2SocksKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/3.0.2/HevSocks5Tunnel.xcframework.zip",
        checksum: "7d14046a61645df705b5fe61ec4ea9c66b9dbf4e5380bc5205d1df28564070b4"
    )
  ]
)
