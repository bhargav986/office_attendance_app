import 'package:flutter/material.dart';

class ViewAttendanceRecordsPage extends StatelessWidget {
  const ViewAttendanceRecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Attendance Records'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with the actual number of records
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('Employee ${index + 1}'),
            subtitle: const Text('Status: Present'),
            trailing: const Text('2024-11-22 '),
          );
        },
      ),
    );
  }
}