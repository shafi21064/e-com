import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get_storage/get_storage.dart';
import 'package:torganic/src/app.dart';
import 'package:torganic/src/utils/firebase/firebase_api.dart';

import 'firebase_options.dart';
import 'src/features/authentication/data/repositories/auth_repositories.dart';

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthRepositories));

  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}
