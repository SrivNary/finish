import 'package:flutter/material.dart';

class FloorBuilding extends StatefulWidget {
  const FloorBuilding({super.key});

  @override
  State<FloorBuilding> createState() => _FloorBuildingState();
}

class _FloorBuildingState extends State<FloorBuilding> {
  final List<String> floors = [
    'ជាន់ផ្ទាល់ដី',
    'ជាន់ទី ១',
    'ជាន់ទី ២',
    'ជាន់ទី ៣',
  ];
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      title: 'Building Floors',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2C2C54),
        title: Text('Building A\nFloor'),
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
          itemCount: floors.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xFFE0E0E0),
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Center(
                  child: Text(
                    floors[index],
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
