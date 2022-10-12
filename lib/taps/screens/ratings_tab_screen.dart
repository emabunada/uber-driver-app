import 'package:drivers_app/global/widgets/app_text.dart';
import 'package:flutter/material.dart';

class RatingsTabScreen extends StatefulWidget {
  const RatingsTabScreen({Key? key}) : super(key: key);

  @override
  State<RatingsTabScreen> createState() => _RatingsTabScreenState();
}

class _RatingsTabScreenState extends State<RatingsTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppText(
        'Ratings',
        fontSize: 16,
        color: Colors.black,
      ),
    );
  }
}
