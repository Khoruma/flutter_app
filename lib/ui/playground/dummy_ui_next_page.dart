import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/dummy_card.dart';
import 'package:flutter_bootcamp/ui/widgets/dummy_small_card.dart';

@RoutePage()
class DummyUiNextPage extends StatefulWidget {
  const DummyUiNextPage({super.key});

  @override
  State<DummyUiNextPage> createState() => _DummyUiNextPageState();
}

class _DummyUiNextPageState extends State<DummyUiNextPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  List<DummySmallCard> card = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    initDummyUi();
  }

  void initDummyUi() {
    for (int i = 1; i < 20; i++) {
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
          'Dummy UI',
          style: context.textTheme.displayLarge,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: UIHelper.padding(
              top: 15,
              bottom: 10,
            ),
            child: TabBar(
              controller: _tabController,
              indicatorWeight: 4,
              labelColor: ColorConstant.primary,
              unselectedLabelColor: ColorConstant.grey,
              tabs: const <Widget>[
                Text(
                  'ListView',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'GridView',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Padding(
                  padding: UIHelper.padding(
                    top: 10,
                    left: UIHelper.paddingContent,
                    right: UIHelper.paddingContent,
                  ),
                  child: ListView.separated(
                    itemCount: 20,
                    separatorBuilder: (context, index) => SizedBox(
                      height: UIHelper.setHeight(15),
                    ),
                    itemBuilder: (context, index) => const DummyCard(),
                  ),
                ),
                Padding(
                  padding: UIHelper.padding(
                    top: 10,
                    left: UIHelper.paddingContent,
                    right: UIHelper.paddingContent,
                  ),
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1.5,
                    children: card
                        .map((e) => DummySmallCard(
                              title: '',
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
