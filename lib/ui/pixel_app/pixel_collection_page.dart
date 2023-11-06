import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/dummy_card.dart';

@RoutePage()
class PixelCollectionPage extends StatelessWidget {
  const PixelCollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: UIHelper.padding(top: 50, horizontal: UIHelper.paddingContent),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favorites',
              style: context.textTheme.displayMedium,
            ),
            UIHelper.verticalSpace(20),
            const DummyCard(),
            const DummyCard(),
            const DummyCard(),
            const DummyCard(),
          ],
        ),
      ),
    );
  }
}
