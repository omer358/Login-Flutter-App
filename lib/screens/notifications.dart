import 'package:flutter/material.dart';

class NotificationsRoute extends StatefulWidget {
  const NotificationsRoute({Key? key}) : super(key: key);

  @override
  _NotificationsRouteState createState() => _NotificationsRouteState();
}

class _NotificationsRouteState extends State<NotificationsRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: const Center(
        child: Text("Notifications"),
      ),
    );
  }
}
