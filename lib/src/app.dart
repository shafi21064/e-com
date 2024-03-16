import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:torganic/src/utils/device/device_utility.dart';
import 'package:url_launcher/url_launcher.dart';
import './utils/theme/theme.dart';
import './utils/constants/text_strings.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppTexts.appName,
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home:  Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: (){},
            child: Text('tap this'),
          )
        ),
      ),
    );
  }
}


