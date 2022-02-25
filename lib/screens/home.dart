import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int __selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    const List<Widget> _pages = <Widget>[
      Icon(
        Icons.home,
        size: 80,
      ),
      Icon(
        Icons.people_alt,
        size: 80,
      ),
      Icon(
        Icons.notifications,
        size: 80,
      ),
      Icon(
        Icons.chat,
        size: 80,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: IconButton(
                color: Colors.black,
                padding: const EdgeInsets.all(6),
                iconSize: 30,
                icon: Image.asset('assets/images/login.png'),
                onPressed: () {
                  // do something
                }),
          ),
        ],
        title: const Text('Second Route'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 120,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('assets/images/login.png'),
                ),
              ),
            ),
            ListTile(
              title: const Text("profile"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Logout"),
              onTap: () {},
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8.0,
        currentIndex: __selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
      body: Center(
        child: _pages.elementAt(__selectedIndex),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      __selectedIndex = index;
    });
  }
}
