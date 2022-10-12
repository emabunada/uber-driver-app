import 'package:flutter/material.dart';

import '../../global/widgets/app_text.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppText(
        'Home',
        fontSize: 16,
        color: Colors.black,
      ),
    );
  }
}
