import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/model_page.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardModel(
        assetName: 'assets/icons/2.png',
        width: 400,
        height: 360,
        title: 'Design Template uploads Every Tuesday!',
        subtitle:
            'Make sure to take a look my uplab profile every tuesday');
  }
}