# Tun2SocksKit

```swift
import Tun2SocksKit

Socks5Tunnel.run(withFileDescriptor: 4, configFilePath: localConfigFileURL.path(percentEncoded: false))
```

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






