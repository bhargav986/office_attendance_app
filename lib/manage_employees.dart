import 'package:flutter/material.dart';
import 'package:office_attendance_app/employee_dashboard.dart';

class ManageEmployees extends StatelessWidget {
  const ManageEmployees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DashboardCard(
              icon: Icons.add,
              title: 'Add Employee',
              onTap: () {
                Navigator.pushNamed(context, '/add_employee');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            DashboardCard(
              icon: Icons.update,
              title: 'Update/Remove Employee',
              onTap: () {
                Navigator.pushNamed(context, '/update_remove_employee');
              },
            ),
          ],
        ),
      ),
    );
  }
}
