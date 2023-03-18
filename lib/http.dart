import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'dart:io';

Future<void> sendRequest() async {
  final IOClient httpClient = getHttpClient();
  const String url = "https://www.google.com/";
  final Response response = await httpClient.get(Uri.parse(url));
  print(response.body);
}

IOClient getHttpClient() {
  final HttpClient httpClient = HttpClient();
  httpClient.findProxy = (Uri uri) {
    return "PROXY 192.168.0.102:9090";
  };
  httpClient.badCertificateCallback =
      (X509Certificate cert, String host, int port) => Platform.isAndroid;
  return IOClient(httpClient);
}
