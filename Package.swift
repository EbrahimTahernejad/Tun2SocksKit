// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  products: [
    .library(name: "Tun2SocksKit", targets: ["Tun2SocksKit"])
  ],
  targets: [
    .binaryTarget(
      name: "Tun2SocksKit",
      url: "https://github.com/daemonomead/Tun2SocksKit/releases/download/2.0.4/Tun2SocksKit.xcframework.zip",
      checksum: "7ca1d152fe9423f3449eb7d41c2e8d61eb8c884ce8559f7d81d3c49adb2f93b7"
    )
  ]
)
