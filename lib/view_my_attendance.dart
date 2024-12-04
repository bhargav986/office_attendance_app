import 'package:flutter/material.dart';

class ViewMyAttendance extends StatelessWidget {
  const ViewMyAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Attendance Records'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Date: 2024-11-${index + 1}'),
            subtitle: const Text('Status: Present'),
          );
        },
      ),
    );
  }
}