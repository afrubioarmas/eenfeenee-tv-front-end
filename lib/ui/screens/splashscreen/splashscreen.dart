import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'splashscreen_presenter.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ChangeNotifierProvider<SplashscreenPresenter>(
          create: (context) => _createPresenter()..loadData(),
          child: Consumer<SplashscreenPresenter>(
            builder: (context, presenter, _) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 150),
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.22,
                    height: MediaQuery.of(context).size.height * 0.22,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  SplashscreenPresenter _createPresenter() {
    return SplashscreenPresenter();
  }
}
