import 'package:flutter/material.dart';

class AboutPAge extends StatelessWidget {
  const AboutPAge({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialApp(
      title: 'About Page Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutScreen()),
            );
          },
          child: Text('About'),
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/num_building.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                elevation: 5,
                child:const Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Text(
                          'WELCOME TO NUM',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Throughout the course of 39 years, the National University of Management has been developing progressively in terms of capacity, diversity, and quality education, based on our core values of research, entrepreneurship, and innovation, which take our students and alumni to a brighter future.',
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Find Us',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text('855-23-428120'),
                      Text('855-23-427105'),
                      SizedBox(height: 8.0),
                      Text(
                        'sengbunthoeun@num.edu.kh',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}