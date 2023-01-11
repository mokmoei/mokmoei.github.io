import 'package:flutter/material.dart';
import 'package:web_profile/widgets/max_size_container_widget.dart';

class Experian extends StatelessWidget {
  const Experian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          MaxSizeContainerWidget(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const LetterSpacing(
                              "My Experian",
                            ),
                            Container(
                              width: 50,
                              height: 2,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Self Learning",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Text(
                        "looking for a job",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 700,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(300),
                      bottomRight: Radius.circular(300),
                    ),
                    child: Image.asset(
                      "assets/images/experian.jpg",
                      height: 700,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LetterSpacing extends StatelessWidget {
  final String textspac;
  const LetterSpacing(this.textspac, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          textspac,
          style: const TextStyle(
              fontSize: 24, color: Colors.white, letterSpacing: 3),
        ),
        Container(
          width: 20,
          height: 2,
          color: Colors.white,
        )
      ],
    );
  }
}
