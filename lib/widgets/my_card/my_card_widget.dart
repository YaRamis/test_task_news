import 'package:flutter/material.dart';

import 'my_card_postfix_widget.dart';

class MyCardWidget extends StatefulWidget {
  final String? imageAsset;

  const MyCardWidget({
    super.key,
    this.imageAsset,
  });

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  final GlobalKey _key = GlobalKey();

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      constraints: const BoxConstraints(minHeight: 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      clipBehavior: Clip.hardEdge,
      // padding: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: TextField(
                controller: _controller,
                style: const TextStyle(fontSize: 14),
                maxLines: null,
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              flex: 1,
              child: widget.imageAsset != null
                  ? MyCardPostfixImageWidget(
                      imageAsset: widget.imageAsset!,
                    )
                  : const MyCardPostfixCircleWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
