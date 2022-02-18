import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login App"),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
        children: [
          const SizedBox(height: 32.0),
          Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/login.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),
          const TextField(
            decoration: InputDecoration(
              filled: true,
              labelText: "username",
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "password",
              filled: true,
            ),
            obscureText: true,
          )
        ],
      ),
    );
  }
}
