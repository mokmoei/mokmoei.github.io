import 'package:flutter/material.dart';
import 'package:web_profile/slide/experian/experian_slide.dart';
import 'package:web_profile/widgets/max_size_container_widget.dart';

class InformationSlide extends StatelessWidget {
  const InformationSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MaxSizeContainerWidget(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100, bottom: 40),
                child: Text(
                  "PERSONAL INFOMATION",
                  style: TextStyle(
                      fontSize: 96.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: LetterSpacing(
                          "My Name",
                        ),
                      ),
                      TextDot("Rapeepan Mokmoei"),
                      TextDot("I'm 24 year old"),
                      TextDot("I live in Thoeng District, Province Chiang Rai"),
                      TextDot("I'm a Thai person."),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: LetterSpacing(
                          "My Hobby",
                        ),
                      ),
                      TextDot("travel"),
                      TextDot("coding"),
                      TextDot("photography,photo editing"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: LetterSpacing(
                          "Interest",
                        ),
                      ),
                      TextDot("mobile application"),
                      TextDot("UX/UI design"),
                      TextDot("photography"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Container(
            width: 1280,
            height: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(500),
                bottomRight: Radius.circular(500),
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/personimage.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TextDot extends StatelessWidget {
  final String text;
  const TextDot(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            bottom: 5,
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class TitleText extends StatelessWidget {
  final String text;
  const TitleText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 24.0, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(width: 40,height: 2,color: Colors.white,),
        ),
      ],
    );
  }
}
