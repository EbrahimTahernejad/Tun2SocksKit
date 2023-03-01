# Tun2SocksKit

从 `2.0.1` 开始，使用[hev-socks5-tunnel](https://github.com/heiher/hev-socks5-tunnel)替换[leaf](https://github.com/eycorsican/leaf)的实现。

---

### 使用
```swift
// 添加如下代码到代码中，可不依赖头文件调用hev-socks5-tunnel中的启动函数
@_silgen_name("hev_socks5_tunnel_main") 
private func hev_socks5_tunnel_main( _ configFilePath: UnsafePointer<CChar>!, _ fd: Int32)

// 调用
hev_socks5_tunnel_main(path, fd)
```
```yml
// 配置文件
# Main configuration for hev-socks5-tunnel

tunnel:
  mtu: 9000
  ipv4:
    address: 198.18.0.1
    gateway: 198.18.0.1
    prefix: 16

socks5:
  port: 7890
  address: ::1
  udp: 'udp'

misc:
   # task stack size (bytes)
#  task-stack-size: 20480
   # connect timeout (ms)
#  connect-timeout: 5000
   # read-write timeout (ms)
#  read-write-timeout: 60000
   # stdout, stderr or file-path
#  log-file: stderr
   # debug, info, warn or error
  log-level: debug
   # If present, run as a daemon with this pid file
#  pid-file: /run/hev-socks5-tunnel.pid
   # If present, set rlimit nofile; else use default value
#  limit-nofile: 65535
```
