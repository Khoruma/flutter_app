import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/choose_app.dart';

@RoutePage()
class HelloWorldPage extends StatelessWidget {
  const HelloWorldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: UIHelper.setHeight(18),
          ),
        ),
        title: Text(
          'Hello World',
          style: context.textTheme.displayLarge,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello World!!',
              style: context.textTheme.displayLarge,
            ),
            UIHelper.verticalSpace(20),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: UIHelper.padding(
                            top: 30,
                            horizontal: UIHelper.defaultPadding,
                            bottom: 30),
                        child: const SingleChildScrollView(
                          child: ChooseAppWidget(
                            showResetButton: true,
                          ),
                        ),
                      );
                    });
              },
              child: const Text(
                'Reset App',
              ),
            )
          ],
        ),
      ),
    );
  }
}
