import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        if (user.email != null && user.email!.endsWith('@admin.com')) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/admin_dashboard', (route) => false);
        } else {
          Navigator.pushNamedAndRemoveUntil(
              context, '/employee_dashboard', (route) => false);
        }
      } else {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      }
    });

    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: 1.0,
                  duration: const Duration(seconds: 1),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 400,
                    width: 400,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Track attendance seamlessly',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'assets/fonts/opensans_regular',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 40),

                // Custom loader
                const CircularProgressIndicator(
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
