import Foundation
import HevSocks5Tunnel

public enum Socks5Tunnel {
    
    @discardableResult
    public static func run(withFileDescriptor fileDescriptor: Int32, configFilePath: String) -> Int32 {
        return hev_socks5_tunnel_main(configFilePath.cString(using: .utf8), fileDescriptor)
    }
    
    public static func quit() {
        hev_socks5_tunnel_quit()
    }
}
