import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:office_attendance_app/employee_dashboard.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Admin Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, '/admin_login');
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DashboardCard(
                icon: Icons.group,
                title: 'Manage Employee',
                onTap: () {
                  Navigator.pushNamed(context, '/manage_employees');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              DashboardCard(
                icon: Icons.group,
                title: 'Approve/Reject Leaves',
                onTap: () {
                  Navigator.pushNamed(context, '/approve_reject_leaves');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              DashboardCard(
                icon: Icons.assignment,
                title: 'View Attendance Records',
                onTap: () {
                  Navigator.pushNamed(context, '/view_attendance');
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
