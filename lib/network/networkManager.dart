import 'dart:convert';
import '../Constants/strings.dart';
import 'networkClient.dart';

class NetworkManager {
  Future fetchCourses() async {
    final netwotkClient = NetworkClient.createIOClient();
    final response = await netwotkClient.get(Strings.courseURL);
    final decodedResponse = json.decode(response.body);
    print(decodedResponse);
  }
}
