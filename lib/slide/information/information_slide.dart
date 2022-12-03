import 'package:flutter/material.dart';

class InformationSlide extends StatelessWidget {
  const InformationSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  child: Text(
                    "My Name",
                    style: TextStyle(fontSize: 24.0),
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
                  child: Text(
                    "My Hobby",
                    style: TextStyle(fontSize: 24.0),
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
                  child: Text(
                    "Interest",
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
                TextDot("mobile application"),
                TextDot("UX/UI design"),
                TextDot("photography"),
              ],
            ),
          ],
        ),
    // Container(height: 360,),
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
            ),
          ),
        ),
      ],
    );
  }
}
