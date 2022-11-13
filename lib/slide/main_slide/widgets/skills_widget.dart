import 'package:flutter/material.dart';
import 'package:web_profile/const/image_path_const.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, boxConstraints) {
      final isSmallSize = boxConstraints.maxWidth <= 600;
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: isSmallSize ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: SkillCard(
              textSkill: ("Flutter"),
              imageSkill: ("flutter.png"),
            ),
          ),
          if (!isSmallSize)
            const SkillCard(
              textSkill: ("UX/UI"),
              imageSkill: ("uxui.png"),
            ),
          if (isSmallSize)
            Row(
              children: [
                Spacer(),
                const SkillCard(
                  textSkill: ("UX/UI"),
                  imageSkill: ("uxui.png"),
                ),
              ],
            ),
          const SkillCard(
            textSkill: ("Photo"),
            imageSkill: ("photo.jpg"),
          ),
        ],
      );
    });
  }
}

class SkillCard extends StatelessWidget {
  final String textSkill;
  final String imageSkill;
  const SkillCard({
    required this.textSkill,
    required this.imageSkill,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 36.82,
          decoration: const BoxDecoration(
            color: Color(0xFFC8D0B8),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                textSkill,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImagePathConst.rootImage + imageSkill),
              ),
            ),
          ),
        )
      ],
    );
  }
}
