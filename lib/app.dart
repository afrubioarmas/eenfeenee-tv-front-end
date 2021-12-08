import 'package:eenfeenee_tv_front_end/ui/screens/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

import 'misc/service_locator.dart';
import 'navigators/app_navigator/app_navigator.dart';

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

final GlobalKey<NavigatorState> keyGlobal = GlobalKey();

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      navigatorKey: locator<AppNavigator>().navigatorKey,
      onGenerateRoute: locator<AppNavigator>().onGenerateRoute,
      home: SplashScreen(),
    );
  }
}
