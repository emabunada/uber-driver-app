import 'package:drivers_app/auth/screens/register_screen.dart';
import 'package:drivers_app/global/widgets/app_text.dart';
import 'package:drivers_app/spalsh/app_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    child: ScreenUtilInit(
        designSize: const Size(420, 880),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Drivers App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const RegisterScreen(),
          );
        }),
  ));
}

class MyApp extends StatefulWidget {
  final Widget child;
  MyApp({super.key, required this.child});
  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(key: key, child: widget.child);
  }
}
