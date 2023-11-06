import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/dummy_card.dart';
import 'package:flutter_bootcamp/ui/widgets/dummy_small_card.dart';
import 'package:flutter_bootcamp/ui/widgets/text_form_field.dart';

@RoutePage()
class PixelExplorePage extends StatefulWidget {
  const PixelExplorePage({super.key});

  @override
  State<PixelExplorePage> createState() => _PixelExplorePageState();
}

class _PixelExplorePageState extends State<PixelExplorePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  List<DummySmallCard> card = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    initDummyUi();
  }

  void initDummyUi() {
    for (int i = 1; i < 5; i++) {
      card.add(DummySmallCard(
        title: '',
      ));
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: UIHelper.padding(top: 50, horizontal: UIHelper.paddingContent),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Explore',
                  style: context.textTheme.displayMedium,
                ),
                Text(
                  'Reset',
                  style: context.textTheme.headlineMedium
                      ?.copyWith(color: ColorConstant.primary),
                ),
              ],
            ),
            UIHelper.verticalSpace(15),
            const TextFormFieldCustom(
              preffixIcon: Icon(
                Icons.search,
                color: ColorConstant.black,
              ),
              hintText: 'Search Articles...',
            ),
            // Container(
            //   width: double.infinity,
            //   height: 55,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: ColorConstant.primary, width: 1),
            //     borderRadius: UIHelper.borderRadiusCircular(all: 10),
            //   ),
            //   child: Padding(
            //     padding: UIHelper.padding(horizontal: 10),
            //     child: Row(
            //       children: [
            //         const Icon(Icons.search),
            //         UIHelper.horizontalSpace(10),
            //         Text(
            //           'Search Articles',
            //           style: context.textTheme.bodySmall
            //               ?.copyWith(color: ColorConstant.grey),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            UIHelper.verticalSpace(20),
            TabBar(
              indicator:
                  const UnderlineTabIndicator(borderSide: BorderSide.none),
              controller: _tabController,
              labelColor: ColorConstant.primary,
              unselectedLabelColor: ColorConstant.grey,
              tabs: const <Widget>[
                Text(
                  'NEWEST',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'OLDEST',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'RELEVANCE',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => const DummyCard(),
                  ),
                  ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => const DummyCard(),
                  ),
                  ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => const DummyCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
