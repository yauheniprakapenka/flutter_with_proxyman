import 'dart:io';
import 'package:http/io_client.dart';
import 'proxy.dart';

class NetworkClient {
  static createIOClient() {
    final httpClient = HttpClient();
    httpClient.findProxy = (uri) {
      return "PROXY ${Proxy.getAddress()};";
    };
    httpClient.badCertificateCallback =
        (X509Certificate cert, String host, int port) => Platform.isAndroid;
    return IOClient(httpClient);
  }
}
