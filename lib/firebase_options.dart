// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDjO86lFK2NsrCz98unfGsOVNOt55PvCAg',
    appId: '1:649305028663:web:ec8153162bab1f2167e7b2',
    messagingSenderId: '649305028663',
    projectId: 'attendanceapp-56c3b',
    authDomain: 'attendanceapp-56c3b.firebaseapp.com',
    storageBucket: 'attendanceapp-56c3b.firebasestorage.app',
    measurementId: 'G-LPVKZFEM1Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOEe_VYVTTp4WHvTUb3W0j4PdPfUoC2N8',
    appId: '1:649305028663:android:1b1107f82715536767e7b2',
    messagingSenderId: '649305028663',
    projectId: 'attendanceapp-56c3b',
    storageBucket: 'attendanceapp-56c3b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCVzldmqmwUsn3uPx0NWUvvPmlsYYKbWBs',
    appId: '1:649305028663:ios:592e9a83c3d7d36667e7b2',
    messagingSenderId: '649305028663',
    projectId: 'attendanceapp-56c3b',
    storageBucket: 'attendanceapp-56c3b.firebasestorage.app',
    iosBundleId: 'com.example.officeAttendanceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCVzldmqmwUsn3uPx0NWUvvPmlsYYKbWBs',
    appId: '1:649305028663:ios:592e9a83c3d7d36667e7b2',
    messagingSenderId: '649305028663',
    projectId: 'attendanceapp-56c3b',
    storageBucket: 'attendanceapp-56c3b.firebasestorage.app',
    iosBundleId: 'com.example.officeAttendanceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDjO86lFK2NsrCz98unfGsOVNOt55PvCAg',
    appId: '1:649305028663:web:24c719021839270867e7b2',
    messagingSenderId: '649305028663',
    projectId: 'attendanceapp-56c3b',
    authDomain: 'attendanceapp-56c3b.firebaseapp.com',
    storageBucket: 'attendanceapp-56c3b.firebasestorage.app',
    measurementId: 'G-SMNCM6TNGR',
  );
}
