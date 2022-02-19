import 'package:flutter/material.dart';
import 'package:login_app/screens/home.dart';

class LoginRoute extends StatefulWidget {
  const LoginRoute({Key? key}) : super(key: key);

  @override
  _LoginRouteState createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  bool _IsVisiable = false;
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
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                filled: true,
                labelText: "username",
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.vpn_key),
                suffixIcon: IconButton(
                    icon: (_IsVisiable
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility)),
                    onPressed: _togglePasswordVisibilty),
                labelText: "password",
                filled: true,
              ),
              obscureText: !_IsVisiable,
            ),
            ButtonBar(
              children: [
                ElevatedButton(
                    child: const Text("Login"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Home()));
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _togglePasswordVisibilty() {
    setState(() {
      if (_IsVisiable) {
        _IsVisiable = false;
      } else {
        _IsVisiable = true;
      }
    });
  }
}
