# Tun2SocksKit

Forked from: [daemooon/Tun2SocksKit](https://github.com/daemooon/Tun2SocksKit)

This repository is a compilation workflow for [heiher/hev-socks5-tunnel](https://github.com/heiher/hev-socks5-tunnel)

## Usage

```swift
import Tun2SocksKit

let fileDescriptor: Int = ...
let localConfigFilePath: String = ...
Socks5Tunnel.run(withFileDescriptor: fileDescriptor, configFilePath: localConfigFilePath)

// To quit:
Socks5Tunnel.quit()
```

## Config File Content

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

+ NOTE! You can replace `stderr` with a file path.




