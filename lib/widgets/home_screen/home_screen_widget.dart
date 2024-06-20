import 'package:flutter/material.dart';
import 'package:test_task_news/widgets/my_card/my_card_widget.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Task News'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyCardWidget(),
              SizedBox(height: 16),
              MyCardWidget(imageAsset: 'assets/images/first.jpg'),
              SizedBox(height: 16),
              MyCardWidget(imageAsset: 'assets/images/second.jpg'),
              SizedBox(height: 16),
              MyCardWidget(imageAsset: 'assets/images/third.jpg'),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
