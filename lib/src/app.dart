import 'package:connection_notifier/connection_notifier.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:torganic/src/features/bottom_navigation/bottom_navigation.dart';
import 'package:torganic/src/features/personalization/view/profile.dart';
import 'package:torganic/src/features/video_player/view/video_player.dart';
import '../main.dart';
import 'features/notification_view/view/notiication.dart';
import 'features/splash/view/splash_screen.dart';
import './utils/theme/theme.dart';
import './utils/constants/text_strings.dart';
import 'common/bindings/general_bingdings.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      child: GetMaterialApp(
        title: AppTexts.appName,
        themeMode: ThemeMode.system,
        theme: MyAppTheme.lightTheme,
        darkTheme: MyAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
          initialBinding: GeneralBindings(),
          locale: const Locale('en'),
          localizationsDelegates: const [
            AppLocalizations.delegate, // Add this line
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English
            Locale('es'), // Spanish
          ],
        home: const SplashScreen(),

        navigatorKey: navigatorKey,
        routes: {
          "/notification_screen" : (context) => const NotificationPages(),
        },
      ),
    );
  }
}


