import 'package:flutter/material.dart';

class WorkingHours extends StatelessWidget{
  const WorkingHours({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Working Hours'),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            leading: const Icon(Icons.access_time, color: Colors.teal,),
            title: Text('Date: 2024-11-${15+index}'),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Start time: 9:00 AM'),
                Text('End time: 5:00 AM'),
                Text('Total hours: 8 hours'),
              ],
            ),
            trailing: const Text('Status: Present'),
          ),
        );
      }),
    );
  }
}