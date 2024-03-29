import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/model_page.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardModel(
        assetName: 'assets/icons/1.png',
        width: 350,
        height: 350,
        title: 'Welcome to Surf.',
        subtitle:
            'I provide essential stuff for your ui designs every tuesday!');
  }
}
