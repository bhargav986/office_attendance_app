import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseAPI{
  final firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async{
    await firebaseMessaging.requestPermission();
    final fcmToken = await firebaseMessaging.getToken();
    print('Token: $fcmToken');
  }
}