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
                Container(
                  width: 450,
                  height: 600,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "My Experian",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                              Container(
                                width: 50,
                                height: 3,
                                color: Colors.black,
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
                            ),
                          ),
                        ),
                        const Text(
                          "looking for a job",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 700,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(300),
                      bottomLeft: Radius.circular(300),
                    ),
                    child: Image.asset(
                      "assets/images/experian.jpg",
                      height: 500,
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
