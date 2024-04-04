import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:torganic/src/app.dart';
import 'package:torganic/src/utils/firebase/firebase_api.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';
import 'src/features/authentication/data/repositories/auth_repositories.dart';

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthRepositories));

  await FirebaseApi().initNotifications();
  Stripe.publishableKey =
      "pk_test_51P1ip3P2j285qpY0QWFYsQJAG2AV51vaK43X3gFiAfWthlEsALRJS33aVZDZNOaS1hgMlBd20AG7ejNWqcPqvpW500bYRkMhG6";

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}
