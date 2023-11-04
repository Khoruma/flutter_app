import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: UIHelper.setHeight(18),
          ),
        ),
        title: Text(
          'Counter App',
          style: context.textTheme.displayLarge,
        ),
      ),
      body: Center(
        child: Text(
          '0',
          style: context.textTheme.displayLarge,
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Text('+'),
          ),
          UIHelper.verticalSpace(10),
          FloatingActionButton(
            onPressed: () {},
            child: const Text('-'),
          ),
        ],
      ),
    );
  }
}
