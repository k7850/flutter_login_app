import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

import '../components/logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: xlarge_gap),
          Logo("Care Soft"),
          SizedBox(height: large_gap),
          TextButton(onPressed: () {}, child: Text("Get Started")),
        ],
      ),
    ));
  }
}
