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
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            const SizedBox(height: 64.0),
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
                prefixIcon: Icon(Icons.person),
                filled: true,
                labelText: "username",
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: "password",
                filled: true,
              ),
              obscureText: true,
            )
          ],
        ),
      ),
    );
  }
}
