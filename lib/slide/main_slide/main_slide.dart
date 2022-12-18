import 'package:flutter/material.dart';

import 'package:web_profile/slide/main_slide/widgets/name_widget.dart';

class MainSlide extends StatefulWidget {
  const MainSlide({super.key});

  @override
  State<MainSlide> createState() => _MainSlideState();
}

class _MainSlideState extends State<MainSlide> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mainim.jpg'),
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
            opacity: 1,
            fit: BoxFit.cover,
          ),
        ),
        child: LayoutBuilder(
          builder: (_, boxConstraints) {
            return boxConstraints.maxWidth >= 750
                ? Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 200),
                        child: NameWidget(),
                      ),
                      Spacer(),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SafeArea(
                          child: Padding(
                        padding: EdgeInsets.only(top: 20, left: 16),
                        child: NameWidget(),
                      )),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
