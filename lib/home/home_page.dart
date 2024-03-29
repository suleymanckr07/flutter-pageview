import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/main_page.dart';
import 'package:flutter_application_1/home/page_1.dart';
import 'package:flutter_application_1/home/page_2.dart';
import 'package:flutter_application_1/home/page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

PageController controller = PageController();
bool onLastPage = false;
bool visiblePage = false;

class _HomePageState extends State<HomePage> {
  List<Widget> page = [const PageOne(), const PageTwo(), const PageThree()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: page,
            onPageChanged: (index) {
              setState(() {
                visiblePage =
                    (index == 0);
                onLastPage = (index == 2);
                page = [const PageOne(), const PageTwo(), const PageThree()];
              });
            },
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Visibility(
                    visible: visiblePage,
                    child: visiblePage
                        ? GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const MainPage(),
                                ),
                              );
                            },
                            child: const Text('Skip'),
                          )
                        : Container()),
                SmoothPageIndicator(controller: controller, count: page.length),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const MainPage(),
                            ),
                          );
                        },
                        child: const Text('Done'),
                      )
                    : GestureDetector(
                        onTap: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text('Next'),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
