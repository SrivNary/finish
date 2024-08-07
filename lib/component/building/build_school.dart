import 'package:flutter/material.dart';

class BuildSchool extends StatefulWidget {
  const BuildSchool({super.key});
  

  @override
  State<BuildSchool> createState() => _BuildSchoolState();
}

class _BuildSchoolState extends State<BuildSchool> {
  final List<String> halls = [
    'Hall A',
    'Hall B',
    'Hall C',
    'Hall D',
    'Hall E',
    'Hall F',
  ];
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      title: 'Building List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color(0xFF2C2C54),
        title: Text('Building'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back press
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2C2C54), Color(0xFF1A1A1A)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(16.0),
          itemCount: halls.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xFFE0E0E0),
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Center(
                  child: Text(
                    halls[index],
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onTap: () {
                  // Handle tap
                },
              ),
            );
          },
        ),
      ),
    );
  }
}