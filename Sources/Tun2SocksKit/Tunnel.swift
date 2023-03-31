import Foundation
import HevSocks5Tunnel

public enum Socks5Tunnel {
    
    public static func run(withConfig filePath: String, using fileDescriptor: Int32, completionHandler: @escaping (Int32) -> ()) {
        DispatchQueue.global(qos: .userInitiated).async { [completionHandler] () in
            let code = hev_socks5_tunnel_main(filePath.cString(using: .utf8), fileDescriptor)
            completionHandler(code)
        }
    }
    
    public static func quit() {
        hev_socks5_tunnel_quit()
    }
}
