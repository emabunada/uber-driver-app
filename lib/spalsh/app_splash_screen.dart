import 'dart:async';

import 'package:drivers_app/global/widgets/app_box.dart';
import 'package:drivers_app/global/widgets/app_text.dart';
import 'package:drivers_app/main/screens/main_screen.dart';
import 'package:flutter/material.dart';

class AppSplashScreen extends StatefulWidget {
  const AppSplashScreen({Key? key}) : super(key: key);

  @override
  State<AppSplashScreen> createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends State<AppSplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => const MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo1.png',
            ),
            AppBox(
              height: 20,
            ),
            const AppText('Uber & inDriver Clone App', fontSize: 24),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }
}
