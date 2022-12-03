import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class experian extends StatelessWidget {
  const experian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Expanded(
            child: Container(
              width: 100,
              height: 500,
              color: Colors.white,
              child: Text(
                "My Experian",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(200),
                bottomLeft: Radius.circular(200),
              ),
              child: Image.asset(
                "assets/images/experian.jpg",
                height: 500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
