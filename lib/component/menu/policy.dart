import 'package:flutter/material.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialApp(
      title: 'Policy Page Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
    //  Scaffold(
    //   appBar: AppBar(
    //     title: Text('Home'),
    //     backgroundColor: Colors.blue,
    //   ),
    //   body: Center(
    //     child: ElevatedButton(
    //       onPressed: () {
    //         Navigator.push(
    //           context,
    //           MaterialPageRoute(builder: (context) => PolicyScreen()),
    //         );
    //       },
    //       child: Text('Policy'),
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text('Policy'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 5,
            child:const Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Key mission which is to improve and apply the best quality standards in education research, and innovation. '
                'The strategic Plan 2019-2023 expresses the university\'s strong commitment to transform the National University '
                'of Management to be the leading research university in entrepreneurship and innovation.',
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

