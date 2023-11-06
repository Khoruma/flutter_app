import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/routes/app_router.gr.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/choose_option.dart';
import 'package:flutter_bootcamp/ui/widgets/dummy_card.dart';
import 'package:flutter_bootcamp/ui/widgets/dummy_small_card.dart';
import 'package:flutter_bootcamp/ui/widgets/text_form_field.dart';
import 'package:flutter_bootcamp/ui/widgets/title_green.dart';

@RoutePage()
class DummyUiPage extends StatelessWidget {
  const DummyUiPage({super.key});

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
      body: Padding(
        padding: UIHelper.padding(
          top: 10,
          left: UIHelper.paddingContent,
          right: UIHelper.paddingContent,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChooseOption(
                title: 'Next',
                subTitle: 'Tab Bar, GridView, ListView',
                onTap: () {
                  AutoRouter.of(context).push(const DummyUiNextRoute());
                },
              ),
              TitleGreen(title: 'Container and Text'),
              const DummyCard(),
              TitleGreen(title: 'Column'),
              const DummyCard(),
              SizedBox(
                height: UIHelper.setHeight(15),
              ),
              const DummyCard(),
              TitleGreen(title: 'Row'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DummySmallCard(
                    title: '1st',
                  ),
                  DummySmallCard(
                    title: '2nd',
                  ),
                  DummySmallCard(
                    title: '3rd',
                  ),
                ],
              ),
              TitleGreen(title: 'Button'),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Press Me'),
                ),
              ),
              TitleGreen(title: 'Input'),
              TextFormFieldCustom(
                title: 'Email',
                preffixIcon: Icon(
                  Icons.email_outlined,
                  size: UIHelper.setHeight(20),
                ),
              ),
              TitleGreen(title: 'Image asset, Sized Box & Expanded'),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: DummySmallCard(
                      title: '1st',
                    ),
                  ),
                  SizedBox(
                    width: UIHelper.setWidth(10),
                  ),
                  Expanded(
                    child: DummySmallCard(
                      title: '2nd',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: UIHelper.setHeight(30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
