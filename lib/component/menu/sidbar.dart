import 'package:flutter/material.dart';
import 'package:map_school/component/home_page.dart';
import 'package:map_school/component/menu/about.dart';
import 'package:map_school/component/menu/inv.dart';
import 'package:map_school/component/menu/policy.dart';
import 'package:map_school/component/menu/sitting.dart';
import 'package:map_school/component/menu/view_profile.dart';

class MenuSidBar extends StatefulWidget {
  const MenuSidBar({super.key});

  @override
  State<MenuSidBar> createState() => _MenuSidBarState();
}

class _MenuSidBarState extends State<MenuSidBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    MainDashboard(),
    SittingScreen(),
    PolicyPage(),
    ViewProfile(),
    InviteFriend(),
    AboutPAge(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/num_logo.png', width: 80, height: 80),
                  SizedBox(height: 10),
                  Text(
                    'NUM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'View Profile',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people_alt),
              title: Text('Invite Friend'),
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.policy),
              title: Text('Policy'),
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Locator'),
              onTap: () {
                _onItemTapped(5);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info_sharp),
              title: Text('About'),
              onTap: () {
                _onItemTapped(6);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Handle logout functionality here
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
