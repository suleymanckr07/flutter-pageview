import 'package:flutter/material.dart';

import '../model/model_page.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardModel(
        assetName: 'assets/icons/3.png',
        width: 400,
        height: 360,
        title: 'Download now!',
        subtitle:
            'You can follow me if you wantand comment on any to get some freebies');
  }
}