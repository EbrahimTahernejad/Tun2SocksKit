import Foundation
import HevSocks5Tunnel

public enum Socks5Tunnel {
    @discardableResult
    public static func run(withConfig filePath: String, using fileDescriptor: Int32? = nil) -> Int32 {
        guard let fileDescriptor else {
            fatalError("Get tunnel file descriptor failed.")
        }
        return hev_socks5_tunnel_main(filePath.cString(using: .utf8), fileDescriptor)
    }
    
    public static func quit() {
        hev_socks5_tunnel_quit()
    }
}
