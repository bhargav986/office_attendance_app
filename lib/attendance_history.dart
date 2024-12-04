import 'package:flutter/material.dart';

class AttendanceHistory extends StatelessWidget {
  const AttendanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance History'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(
            leading: Icon(Icons.date_range),
            title: Text('Date: 2024-11-22'),
            subtitle: Text('Status: Present'),
          ),
          ListTile(
            leading: Icon(Icons.date_range),
            title: Text('Date: 2024-11-21'),
            subtitle: Text('Status: Absent'),
          ),
          // Add more attendance records here
        ],
      ),
    );
  }
}

