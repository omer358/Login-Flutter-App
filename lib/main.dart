import 'package:flutter/material.dart';
import 'package:login_app/screens/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login App",
      theme: ThemeData(primarySwatch: Colors.teal),
      darkTheme: ThemeData.dark(),
      home: const LoginRoute(),
    );
  }
}
