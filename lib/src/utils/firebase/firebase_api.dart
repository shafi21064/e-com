
import 'package:firebase_messaging/firebase_messaging.dart';

import '../../../main.dart';


class FirebaseApi {

  FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async{

    await _firebaseMessaging.requestPermission(
      alert: true,
      sound: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true
    );

    final fCMToken = await _firebaseMessaging.getToken();

    print("FCM TOKEN is : ${fCMToken}");

    initPushNotifications();
  }

  void handelMessage(RemoteMessage? message ){

    if(message == null) {
      return;
    }

    navigatorKey.currentState?.pushNamed(
      "/notification_screen",
      arguments: message
    );
  }

  Future initPushNotifications() async{

    FirebaseMessaging.instance.getInitialMessage().then(handelMessage);

    FirebaseMessaging.onMessageOpenedApp.listen(handelMessage);
    


  }


}