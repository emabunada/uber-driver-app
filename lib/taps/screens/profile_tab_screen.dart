import 'package:flutter/material.dart';

import '../../global/widgets/app_text.dart';

class ProfileTabScreen extends StatefulWidget {
  const ProfileTabScreen({Key? key}) : super(key: key);

  @override
  State<ProfileTabScreen> createState() => _ProfileTabScreenState();
}

class _ProfileTabScreenState extends State<ProfileTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppText(
        'Profile',
        fontSize: 16,
        color: Colors.black,
      ),
    );
  }
}
