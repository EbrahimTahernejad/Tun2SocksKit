# Tun2SocksKit



This repository is a wrapper and a build workflow for [hev-socks5-tunnel](https://github.com/heiher/hev-socks5-tunnel)


### Usage
```swift
import Tun2SocksKit

let code = Socks5Tunnel.run(withConfig: localConfigFileURL.path(percentEncoded: false))
// or
Socks5Tunnel.run(withConfig: localConfigFileURL.path(percentEncoded: false)) { code in
    // ...
}
```

### Config
```yml
tunnel:
  mtu: 9000

socks5:
  port: 7890
  address: ::1
  udp: 'udp'

misc:
  task-stack-size: 20480
  connect-timeout: 5000
  read-write-timeout: 60000
  log-file: stderr
  log-level: debug
  limit-nofile: 65535
```






