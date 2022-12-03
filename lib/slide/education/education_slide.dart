import 'package:flutter/material.dart';

class EducationSlide extends StatelessWidget {
  const EducationSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/education.jpg"),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "EDUCATION",
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("2560 - 2564"),
                ),
                Text("University of phayao,B.sc (Public health)"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
