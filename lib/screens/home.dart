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
            radius: 18,
            backgroundColor: Colors.white,
            child: IconButton(
                color: Colors.black,
                padding: const EdgeInsets.all(5),
                icon: Image.asset('assets/images/login.png'),
                onPressed: () {
                  // do something
                }),
          ),
        ],
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.teal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('assets/images/login.png'),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Omer Maki",
                              style: Theme.of(context).textTheme.headline6),
                          Text("omer358",
                              style: Theme.of(context).textTheme.subtitle2),
                        ],
                      ))
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("profile"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
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
            label: 'News Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Friends',
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
