import 'package:flutter/material.dart';

class MainSlide extends StatefulWidget {
  const MainSlide({super.key});

  @override
  State<MainSlide> createState() => _MainSlideState();
}

class _MainSlideState extends State<MainSlide> {
  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: [
        Container(
          color: const Color(0xFFA95962),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                "My name is",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                "Rapeepan",
                style: TextStyle(fontSize: 64, color: Colors.white),
              ),
              Text(
                "Mokmoei",
                style: TextStyle(fontSize: 64, color: Colors.white),
              )
            ],
          ),
        ),
       Spacer(),
        Column(
          children: [
            const SkillCard(
              TextSkill: ("Flutter"),
              imageSkill:
                  ("https://images.ctfassets.net/23aumh6u8s0i/4TsG2mTRrLFhlQ9G1m19sC/4c9f98d56165a0bdd71cbe7b9c2e2484/flutter"),
            ),
            SkillCard(
              TextSkill: ("UX/UI"),
              imageSkill:
                  ("https://appinventiv.com/wp-content/uploads/sites/1/2020/02/mobile-app-architecture.png"),
            ),
            SkillCard(
              TextSkill: ("Photo"),
              imageSkill:
                  ("https://appinventiv.com/wp-content/uploads/sites/1/2020/02/mobile-app-architecture.png"),
            ),
          ],
        ),
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String TextSkill;
  final String imageSkill;
  const SkillCard({
    required this.TextSkill,
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(TextSkill)),
          ),
          decoration: const BoxDecoration(
              color: Color(0xFFC8D0B8),
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
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
                image: NetworkImage(imageSkill),
              ),
            ),
          ),
        )
      ],
    );
  }
}
