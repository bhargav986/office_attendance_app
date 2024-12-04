import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:office_attendance_app/approve_reject_leaves.dart';
import 'package:office_attendance_app/attendance_history.dart';
import 'package:office_attendance_app/employee_login.dart';
import 'package:office_attendance_app/admin_login.dart';
import 'package:office_attendance_app/employee_dashboard.dart';
import 'package:office_attendance_app/admin_dashboard.dart';
import 'package:office_attendance_app/face_recognition.dart';
import 'package:office_attendance_app/firebase_api.dart';
import 'package:office_attendance_app/leave_balance.dart';
import 'package:office_attendance_app/login_selection_screen.dart';
import 'package:office_attendance_app/manage_employees.dart';
import 'package:office_attendance_app/qrcode_scanner.dart';
import 'package:office_attendance_app/request_leave.dart';
import 'package:office_attendance_app/splash_screen.dart';
import 'package:office_attendance_app/view_attendance.dart';
import 'package:office_attendance_app/view_my_attendance.dart';
import 'package:office_attendance_app/working_hours.dart';
import 'package:office_attendance_app/add_employee.dart';
import 'package:office_attendance_app/update_remove_employee.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAPI().initNotification();
  FirebaseAuth.instance.setLanguageCode('en');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Office Attendance App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const LoginSelectionScreen(),
        '/admin_login': (context) => AdminLoginScreen(),
        '/employee_login': (context) => const EmployeeLoginScreen(),
        '/admin_dashboard': (context) => const AdminDashboard(),
        '/employee_dashboard': (context) => const EmployeeDashboard(),
        '/manage_employees': (context) => const ManageEmployees(),
        '/view_attendance': (context) => const ViewAttendance(),
        '/approve_reject_leaves': (context) => const ApproveRejectLeaves(),
        '/qr_code_scanner': (context) => const QRCodeScannerScreen(),
        '/face_recognition': (context) => const FaceRecognitionScreen(),
        '/view_my_attendance': (context) => const ViewMyAttendance(),
        '/attendance_history': (context) => const AttendanceHistory(),
        '/working_hours': (context) => const WorkingHours(),
        '/leave_balance': (context) => const LeaveBalance(),
        '/request_leave': (context) => RequestLeave(),

        // Manage Employee Dashboard
        '/add_employee': (context) => const AddEmployee(),
        '/update_remove_employee': (context) => const UpdateRemoveEmployee(),
      },
    );
  }
}
