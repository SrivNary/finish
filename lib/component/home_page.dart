import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:map_school/component/menu/sidbar.dart';
import 'package:map_school/component/menu/view_profile.dart';

class MainDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D47A1),
        title: Text('សាកលវិទ្យាល័យ ជាតិគ្រប់គ្រង'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("NUM"),
              accountEmail: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewProfile()),
                  );
                },
                child: Text("View Profile"),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/num_logo.jpg'), // Ensure you have a logo image in assets folder
              ),
              decoration: BoxDecoration(
                color: Color(0xFF2C2C54),
              ),
            ),
          ]
      ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0D47A1),
              Color(0xFF1976D2),
            ],
          ),
        ),
        child: GridView.count(
          padding: EdgeInsets.all(20),
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: <Widget>[
            _buildDashboardItem(
              context,
              icon: FontAwesomeIcons.book,
              label: 'ការគ្រប់គ្រងឯកសារ',
            ),
            _buildDashboardItem(
              context,
              icon: FontAwesomeIcons.graduationCap,
              label: 'ការគ្រប់គ្រងនិស្សិត',
            ),
            _buildDashboardItem(
              context,
              icon: FontAwesomeIcons.moneyBill,
              label: 'ការគ្រប់គ្រងថវិកា',
            ),
            _buildDashboardItem(
              context,
              icon: FontAwesomeIcons.school,
              label: 'ការគ្រប់គ្រងសាលារៀន',
            ),
            _buildDashboardItem(
              context,
              icon: FontAwesomeIcons.mapMarkerAlt,
              label: 'បញ្ចូលទីតាំងសាលា',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Color(0xFF0D47A1),
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context, {required IconData icon, required String label}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FaIcon(
            icon,
            size: 50,
            color: Color(0xFF0D47A1),
          ),
          SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF0D47A1),
            ),
          ),
        ],
      ),
    );
  }
}