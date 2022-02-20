import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_app/screens/home.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginRoute extends StatefulWidget {
  const LoginRoute({Key? key}) : super(key: key);

  @override
  _LoginRouteState createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
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
                RoundedLoadingButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  elevation: 4,
                  controller: _btnController,
                  onPressed: _loginAction,
                  color: Colors.teal,
                  width: 100.0,
                ),
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

  void _loginAction() async {
    Timer(const Duration(seconds: 3), () {
      _btnController.success();
      _btnController.reset();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
    });
  }
}
