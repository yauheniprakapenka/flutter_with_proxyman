/*
 * 1. Disable VPN if enabled
 * 2. Go to Proxyman -> Certificate -> Install certficate on iOS (or Android) -> Physical Device
 * 3. Copy server and port, and paste it here
 */

class Proxy {
  static getAddress() {
    final server = "192.168.0.100";
    final port = "9090";
    return "$server:$port";
  }
}
