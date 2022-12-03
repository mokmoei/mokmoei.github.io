import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:throttling/throttling.dart';
import 'package:web_profile/slide/education/education_slide.dart';
import 'package:web_profile/slide/experian/experrian_slide.dart';
import 'package:web_profile/slide/infomation/infomation_slide.dart';
import 'package:web_profile/slide/main_slide/main_slide.dart';

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({super.key});

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  int index = 0;
  final pageController = PageController();
  final _animationDuration = const Duration(milliseconds: 400);
  final _curve = Curves.easeIn;

  final thr = Throttling(duration: const Duration(milliseconds: 200));

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFA95962),
      child: Center(
        child: Scaffold(
          backgroundColor: const Color(0xFFA95962),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Text('Profile'),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('MAIN'),
                ),
              ),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('INFO'),
                ),
              ),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('CONTRACT'),
                ),
              ),
            ],
          ),
          body: Listener(
            onPointerSignal: (pointerSignal) {
              thr.throttle(() {
                if (pointerSignal is PointerScrollEvent) {
                  if (pointerSignal.scrollDelta.dy > 0) {
                    pageController.nextPage(
                      curve: _curve,
                      duration: _animationDuration,
                    );
                  } else {
                    pageController.previousPage(
                      duration: _animationDuration,
                      curve: _curve,
                    );
                  }
                }
              });
            },
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              pageSnapping: true,
              onPageChanged: (index) {
                this.index = index;
              },
              children: const [
                MainSlide(),
                InfomationSlide(),
                educationSlide(),
                experian(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
