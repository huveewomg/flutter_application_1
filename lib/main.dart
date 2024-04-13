import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Hello World'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.backpack),
            Icon(Icons.leaderboard),
            Icon(Icons.access_alarm),
          ],
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Welcome()),
              );
            },
            backgroundColor: Colors.green,
            child: const Icon(Icons.lock),
          ),
        ),
        drawer: Drawer(
          child: ListTile(
            title: Text('Drawer'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              print('Home');
            } else if (index == 1) {
              print('Search');
            } else if (index == 2) {
              print('Profile');
            }
          },
        ),
      ),
    );
  }
}
