import 'package:flutter/material.dart';

class RequestLeave extends StatelessWidget {
  RequestLeave({super.key});

  final TextEditingController reasonController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Leave'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: dateController,
              decoration: const InputDecoration(
                  labelText: 'Leave Date(s)', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: reasonController,
              decoration: const InputDecoration(
                  labelText: 'Reason', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/employee_dashboard");
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Leave request submitted')));
              },
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}