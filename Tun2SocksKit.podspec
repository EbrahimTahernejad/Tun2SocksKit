Pod::Spec.new do |s|
  s.name             = 'Tun2SocksKit'
  s.version          = '5.14.1'
  s.summary          = 'Wrapper for hev-socks5-tunnel.'
  s.homepage         = 'https://github.com/EbrahimTahernejad/Tun2SocksKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ebrahim Tahernejad' => 'ebrahimtahernejad@gmail.com' }
  s.source           = { :http => 'https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/5.14.1/CocoapodsSource.zip' }
  s.static_framework = true

  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '12.0'
  s.requires_arc = true
  s.swift_versions = ['5.7', '5.8', '5.9']

  s.default_subspec = 'Core'

  s.subspec 'HevSocks5Tunnel' do |hs|
    hs.vendored_frameworks = 'HevSocks5Tunnel.xcframework'
  end

  # === Subspec: Swift wrapper (Tun2SocksKit)
  s.subspec 'Core' do |ss|
    ss.source_files  = 'Sources/Tun2SocksKit/**/*.{swift,h}'
    ss.public_header_files = 'Sources/Tun2SocksKit/Tun2SocksKitC.h'
    ss.dependency 'Tun2SocksKit/HevSocks5Tunnel'
    ss.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }
  end
end
