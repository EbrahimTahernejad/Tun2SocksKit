Pod::Spec.new do |s|
  s.name             = 'Tun2SocksKit'
  s.version          = '5.13.0'
  s.summary          = 'Swift + C wrapper for hev-socks5-tunnel.'
  s.homepage         = 'https://github.com/EbrahimTahernejad/Tun2SocksKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ebrahim Tahernejad' => 'ebrahimtahernejad@gmail.com' }
  s.source           = { :git => 'https://github.com/EbrahimTahernejad/Tun2SocksKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '12.0'
  s.requires_arc = true
  s.swift_versions = ['5.7', '5.8', '5.9']

  # Swift main target
  s.source_files = 'Sources/Tun2SocksKit/**/*.swift'
  s.public_header_files = 'Sources/Tun2SocksKitC/**/*.h'

  # Internal C layer
  s.subspec 'C' do |ss|
    ss.source_files = 'Sources/Tun2SocksKitC/**/*.{c,h}'
    ss.public_header_files = 'Sources/Tun2SocksKitC/**/*.h'
  end

  # Vendored binary (HevSocks5Tunnel)
  s.vendored_frameworks = 'HevSocks5Tunnel.xcframework'
end
