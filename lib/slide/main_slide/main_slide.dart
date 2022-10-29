import 'package:flutter/material.dart';

class MainSlide extends StatefulWidget {
  const MainSlide({super.key});

  @override
  State<MainSlide> createState() => _MainSlideState();
}

class _MainSlideState extends State<MainSlide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(child: Text('Home Wellcome')),
    );
  }
}
