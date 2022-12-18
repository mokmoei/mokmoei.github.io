import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:throttling/throttling.dart';

import 'package:web_profile/slide/main_slide/main_slide.dart';

import 'package:web_profile/widgets/max_size_container_widget.dart';

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
      extendBodyBehindAppBar: true,
      endDrawer: const Drawer(
        backgroundColor: Colors.black45,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // remove Drawer Icon
        actions: const [SizedBox.shrink()],
        title: MaxSizeContainerWidget(
          child: Row(
            children: [
              const Text('Profile'),
              Expanded(
                child: LayoutBuilder(
                  builder: (contextIn, boxConstraints) {
                    return boxConstraints.maxWidth > 400
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text('MAIN'),
                              ),
                              const SizedBox(width: 8),
                              TextButton(
                                onPressed: () {},
                                child: const Text('INFO'),
                              ),
                              const SizedBox(width: 8),
                              TextButton(
                                onPressed: () {},
                                child: const Text('CONTRACT'),
                              ),
                            ],
                          )
                        : Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              icon: const Icon(Icons.more),
                              onPressed: () =>
                                  Scaffold.of(contextIn).openEndDrawer(),
                            ),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
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
            // InformationSlide(),
            // EducationSlide(),
            // Experian(),
          ],
        ),
      ),
    );
  }
}
