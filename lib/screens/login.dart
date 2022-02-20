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
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                filled: true,
                labelText: "username",
              ),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
              controller: passwordController,
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
              textInputAction: TextInputAction.done,
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

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
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

  @override
  void initState() {
    usernameController.addListener(() {
      _btnController.reset();
    });
    super.initState();
  }

  void _loginAction() async {
    Timer(const Duration(seconds: 2), () {
      if (usernameController.text == "omer358" ||
          passwordController.text == '1234') {
        _btnController.success();
        _btnController.reset();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
        );
        usernameController.clear();
        passwordController.clear();
      } else {
        _btnController.error();
      }
    });
  }
}
