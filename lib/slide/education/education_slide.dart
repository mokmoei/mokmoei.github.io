import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class educationSlide extends StatelessWidget {
  const educationSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Image(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/education.jpg"),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "EDUCATION",
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
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
