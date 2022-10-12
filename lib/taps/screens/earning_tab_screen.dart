import 'package:flutter/material.dart';

import '../../global/widgets/app_text.dart';

class EarningTabScreen extends StatefulWidget {
  const EarningTabScreen({Key? key}) : super(key: key);

  @override
  State<EarningTabScreen> createState() => _EarningTabScreenState();
}

class _EarningTabScreenState extends State<EarningTabScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AppText(
        'Earnings',
        fontSize: 16,
        color: Colors.black,
      ),
    );
  }
}
