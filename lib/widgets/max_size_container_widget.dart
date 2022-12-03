import 'package:flutter/material.dart';

class MaxSizeContainerWidget extends StatelessWidget {
  const MaxSizeContainerWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
