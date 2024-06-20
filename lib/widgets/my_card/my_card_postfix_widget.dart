import 'package:flutter/material.dart';

class MyCardPostfixCircleWidget extends StatelessWidget {
  final double radius;

  const MyCardPostfixCircleWidget({
    super.key,
    this.radius = 200,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      clipBehavior: Clip.hardEdge,
      child: OverflowBox(
        maxHeight: radius,
        maxWidth: radius,
        alignment: Alignment.centerLeft,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class MyCardPostfixImageWidget extends StatelessWidget {
  final String imageAsset;

  const MyCardPostfixImageWidget({
    super.key,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(imageAsset),
    );
  }
}
