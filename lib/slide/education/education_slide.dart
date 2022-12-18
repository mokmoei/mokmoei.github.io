import 'package:flutter/material.dart';
import 'package:web_profile/widgets/max_size_container_widget.dart';

class EducationSlide extends StatelessWidget {
  const EducationSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaxSizeContainerWidget(
      child: Row(
        children: [
          const Image(
            height: 700,
            image: AssetImage("assets/images/education.jpg"),
          ),
          Expanded(
            child: Container(
              height: 700,
              color: Color(0XFF664229),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "EDUCATION",
                    style: TextStyle(fontSize: 24,color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("2560 - 2564",style: TextStyle(color: Colors.white,),),
                  ),
                  Text("University of phayao,B.sc (Public health)",style: TextStyle(color: Colors.white,),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
