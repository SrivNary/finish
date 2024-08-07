import 'package:flutter/material.dart';

class ClassFloor extends StatefulWidget {
  const ClassFloor({super.key});

  @override
  State<ClassFloor> createState() => _ClassFloorState();
}

class _ClassFloorState extends State<ClassFloor> {
  // final String floor;
      final List<String> classes = [
      'Class 1A',
      'Class 2A',
      'Class 3A',
      'Class 4A',
    ];
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      title: 'Building Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2C2C54),
        title: Text('Class'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
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
          itemCount: classes.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xFFE0E0E0),
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Center(
                  child: Text(
                    classes[index],
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