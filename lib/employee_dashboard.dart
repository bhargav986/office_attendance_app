import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';

class EmployeeDashboard extends StatelessWidget {
  const EmployeeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Employee Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, '/employee_login');
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
                icon: Icons.history,
                title: 'Attendance History',
                onTap: () {
                  Navigator.pushNamed(context, '/attendance_history');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              DashboardCard(
                icon: Icons.access_time,
                title: 'Working Hours',
                onTap: () {
                  Navigator.pushNamed(context, '/working_hours');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              DashboardCard(
                icon: Icons.beach_access,
                title: 'Leave Balance',
                onTap: () {
                  Navigator.pushNamed(context, '/leave_balance');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              DashboardCard(
                icon: Icons.time_to_leave,
                title: 'Request Leave',
                onTap: () {
                  Navigator.pushNamed(context, '/request_leave');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              DashboardCard(
                icon: Icons.qr_code,
                title: 'Scan QR Code',
                onTap: () {
                  Navigator.pushNamed(context, '/qr_code_scanner');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              DashboardCard(
                icon: Icons.location_on,
                title: 'Check Position',
                onTap: () async {
                  Position position = await Geolocator.getCurrentPosition(
                      desiredAccuracy: LocationAccuracy.high);
                  const double officeLat = 40.478817;
                  const double officeLng = -73.985428;
                  const double radius = 100.0;

                  double distance = Geolocator.distanceBetween(
                      position.latitude,
                      position.longitude,
                      officeLat,
                      officeLng);

                  if (distance <= radius) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text(
                              'You are within office premises! Attendance marked.')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('You are outside office premises.')),
                    );
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              DashboardCard(
                icon: Icons.face,
                title: 'Face Recognition',
                onTap: () {
                  Navigator.pushNamed(context, '/face_recognition');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const DashboardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 32,
                color: Colors.teal,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
