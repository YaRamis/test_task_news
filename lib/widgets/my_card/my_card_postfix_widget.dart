import 'package:flutter/material.dart';

class MyCardPostfixCircleWidget extends StatelessWidget {
  const MyCardPostfixCircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
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
