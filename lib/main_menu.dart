import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:throttling/throttling.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
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
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          pageSnapping: true,
          onPageChanged: (index) {
            this.index = index;
          },
          children: [
            const MainSlide(),
            Container(
              color: Colors.blue,
              child: const Center(child: Text('Infomation')),
            ),
            Container(
              color: Colors.green,
              child: const Center(child: Text('Contracts')),
            )
          ],
        ),
      ),
    );
  }
}
