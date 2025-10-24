Pod::Spec.new do |s|
  s.name             = 'Tun2SocksKit'
  s.version          = '5.13.0'
  s.summary          = 'Wrapper for hev-socks5-tunnel.'
  s.homepage         = 'https://github.com/EbrahimTahernejad/Tun2SocksKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ebrahim Tahernejad' => 'ebrahimtahernejad@gmail.com' }
  s.source           = { :http => 'https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/5.13.0/CocoapodsSource.zip' }

  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '12.0'
  s.requires_arc = true
  s.swift_versions = ['5.7', '5.8', '5.9']

  s.default_subspec = 'Core'

  s.subspec 'Tun2SocksKitC' do |cs|
    cs.source_files        = 'Sources/Tun2SocksKitC/Tun2SocksKitC.{c,h}'
    cs.public_header_files = 'Sources/Tun2SocksKitC/Tun2SocksKitC.h'
    cs.requires_arc        = true
    cs.pod_target_xcconfig = { 'CLANG_ENABLE_MODULES' => 'YES', 'DEFINES_MODULE' => 'YES' }
  end

  s.subspec 'HevSocks5Tunnel' do |hs|
    hs.vendored_frameworks = 'HevSocks5Tunnel.xcframework'
  end

  # === Subspec: Swift wrapper (Tun2SocksKit)
  s.subspec 'Core' do |ss|
    ss.source_files  = 'Sources/Tun2SocksKit/**/*.swift'
    ss.dependency 'Tun2SocksKit/Tun2SocksKitC'
    ss.dependency 'Tun2SocksKit/HevSocks5Tunnel'
  end
end
