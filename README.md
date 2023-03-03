# Tun2SocksKit

从 `2.0.1` 开始，使用[hev-socks5-tunnel](https://github.com/heiher/hev-socks5-tunnel)替换[leaf](https://github.com/eycorsican/leaf)的实现。

本仓库并不能保证每个版本都可用，请自行[fork](https://github.com/daemooon/Tun2SocksKit/fork)，并修改Release.yml自行发布Package。

### 使用
选项 1：使用`Tun2SocksKit`提供的Swift API
```swift
import Tun2SocksKit

Socks5Tunnel.run(withFileDescriptor: 4, configFilePath: localConfigFileURL.path(percentEncoded: false))
```
选项 2：直接使用`HevSocks5Tunnel`提供的C API
```swift
import HevSocks5Tunnel

hev_socks5_tunnel_main(localConfigFileURL.path(percentEncoded: false), 4)
```
注：Socks5 Tunnel运行成功会阻塞当前线程，请在子线程中调用。

### 配置文件
详细信息请参考[hev-socks5-tunnel](https://github.com/heiher/hev-socks5-tunnel)
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






