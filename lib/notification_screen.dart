import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  
  final List<Map<String, String>> notifications = [
    {
      'title': 'សូមកោតសរសើរដល់សាកលវិទ្យាល័យជាតិគ្រប់គ្រងបាន...',
      'date': '25 06 2024',
      'content': 'សូមកោតសរសើរដល់សាកលវិទ្យាល័យ ជាតិគ្រប់គ្រង សូមអរគុណ',
    },
    {
      'title': 'សូមកោតសរសើរដល់សាកលវិទ្យាល័យជាតិគ្រប់គ្រងបាន...',
      'date': '23 06 2024',
      'content': 'សូមកោតសរសើរដល់សាកលវិទ្យាល័យ ជាតិគ្រប់គ្រង សូមអរគុណ',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Notification'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(Icons.notifications, color: Colors.white),
            ),
            title: Text(
              notification['title']!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notification['date']!),
                Text(
                  notification['content']!,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}