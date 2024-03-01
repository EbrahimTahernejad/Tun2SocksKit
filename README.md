# Tun2SocksKit


This repository is a wrapper and a build workflow for [hev-socks5-tunnel](https://github.com/heiher/hev-socks5-tunnel)

## Credits
This code originally belonged to [arror](https://github.com/arror/). I'm just maintaining and updating it.


## Usage
You only need to import `Tun2SocksKit`
```swift
import Tun2SocksKit
```

### Running Tun2SocksKit

Use a file URL to run it
```swift
let code = Socks5Tunnel.run(withConfig: .file(path: localConfigFileURL))
```

Or the contents of the config file as a string
```swift
let code = Socks5Tunnel.run(withConfig: .string(content: stringConfigContent))
```

You can run it non-blocking as well
```swift
Socks5Tunnel.run(withConfig: .string(content: stringConfigContent)) { code in
    // Do stuff with code
}
```

### Stats
To get stats you need to call
```swift
let stats = Socks5Tunnel.stats
```

Both packet count and bytes transmitted/received are provided
```swift
print(stats.up.packets)
print(stats.up.bytes)
print(stats.down.packets)
print(stats.down.bytes)
```

## Config
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






