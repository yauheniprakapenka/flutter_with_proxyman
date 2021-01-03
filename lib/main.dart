import 'package:flutter/material.dart';
import 'package:flutter_proxy_example/network/networkManager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    // Requests a link when the application starts
    NetworkManager().fetchCourses();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Proxy",
        theme: ThemeData(primaryColor: Colors.green),
        home: Scaffold(
          appBar: AppBar(),
        ));
  }
}
