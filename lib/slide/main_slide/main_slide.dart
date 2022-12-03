import 'package:flutter/material.dart';

import 'package:web_profile/slide/main_slide/widgets/name_widget.dart';
import 'package:web_profile/slide/main_slide/widgets/skills_widget.dart';
import 'package:web_profile/widgets/max_size_container_widget.dart';

class MainSlide extends StatefulWidget {
  const MainSlide({super.key});

  @override
  State<MainSlide> createState() => _MainSlideState();
}

class _MainSlideState extends State<MainSlide> {
  @override
  Widget build(BuildContext context) {
    return MaxSizeContainerWidget(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image.webp'),
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
            opacity: 1,
            fit: BoxFit.fitHeight,
          ),
        ),
        child: LayoutBuilder(
          builder: (_, boxConstraints) {
            return boxConstraints.maxWidth >= 600
                ? Row(
                    children: const [
                      NameWidget(),
                      Spacer(),
                      SkillWidget(),
                    ],
                  )
                : Column(
                    children: const [
                      NameWidget(),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SkillWidget(),
                        ),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
