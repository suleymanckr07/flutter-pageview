import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 36),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            LottieBuilder.asset('assets/lottie/welcome.json')
          ],
        ),
      ),
    );
  }
}
