import 'package:flutter/material.dart';

import 'package:web_profile/widgets/max_size_container_widget.dart';

class Contract extends StatelessWidget {
  const Contract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaxSizeContainerWidget(
        child: SafeArea(
          child: Container(
            color: const Color(0xFF664229),
            child: SizedBox.expand(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextImage(
                      "Website : mokmoei.github.io",
                      ("assets/images/global-network.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextImage(
                        "Emali : Rapeepan.mokmoei@gmail.com",
                        ("assets/images/email.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextImage(
                        "Pinterest : pinterest.com/Chommoei",
                        ("assets/images/pinterest.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextImage(
                        "Github : github.com/mokmoei",
                        ("assets/images/github.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextImage(
                      "Facebook : facebook.com/rapepan.mokmoie",
                      ("assets/images/facebook-logo.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextImage extends StatelessWidget {
  final String textPhoto;
  final String photoText;
  const TextImage(this.textPhoto, this.photoText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          photoText,
          width: 26,
          height: 26,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            textPhoto,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
