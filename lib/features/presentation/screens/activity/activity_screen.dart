import 'package:flutter/material.dart';

import '../../../../consts.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        title: const Text('Activity', style: TextStyle(color: primaryColor),),
      ),
    );
  }
}
