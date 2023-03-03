import Foundation
import HevSocks5Tunnel

public enum Tunnel {
    
    public static func startTunnel(with fileDescriptor: Int32, configFilePath: String) -> Int32 {
        return hev_socks5_tunnel_main(configFilePath.path(percentEncoded: false), fileDescriptor)
    }
    
    public static func stop() {
        hev_socks5_tunnel_quit()
    }
}
