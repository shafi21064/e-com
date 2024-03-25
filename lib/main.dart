import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:torganic/src/app.dart';
import 'package:torganic/src/utils/firebase/firebase_api.dart';

import 'firebase_options.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}
