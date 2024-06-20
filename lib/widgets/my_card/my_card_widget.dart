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
      height: widget.imageAsset == null ? 200 : null,
      key: _key,
      constraints: const BoxConstraints(minHeight: 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      clipBehavior: Clip.hardEdge,
      // padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                textAlign: TextAlign.center,
                controller: _controller,
                style: const TextStyle(fontSize: 14),
                maxLines: null,
              ),
            ),
          ),
          Flexible(
            child: widget.imageAsset != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
                    child: MyCardPostfixImageWidget(
                      imageAsset: widget.imageAsset!,
                    ),
                  )
                : const MyCardPostfixCircleWidget(radius: 350),
          )
        ],
      ),
    );
  }
}
