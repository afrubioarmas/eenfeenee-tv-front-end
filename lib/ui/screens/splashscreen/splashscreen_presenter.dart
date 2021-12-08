import 'package:eenfeenee_tv_front_end/misc/service_locator.dart';
import 'package:eenfeenee_tv_front_end/navigators/app_navigator/app_navigator.dart';
import 'package:flutter/material.dart';

class SplashscreenPresenter extends ChangeNotifier {
  final AppNavigator _appNavigator = locator<AppNavigator>();

  Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    _appNavigator.toDashboard();
  }
}
