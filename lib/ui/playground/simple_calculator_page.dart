import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/chip_custom.dart';
import 'package:flutter_bootcamp/ui/widgets/text_form_field.dart';

@RoutePage()
class SimpleCalculatorPage extends StatelessWidget {
  const SimpleCalculatorPage({super.key});

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
          'Simple Calculator',
          style: context.textTheme.displayMedium,
        ),
      ),
      body: SingleChildScrollView(
        padding: UIHelper.padding(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CHOOSE TYPE',
              style: context.textTheme.displayMedium?.copyWith(
                color: ColorConstant.green,
              ),
            ),
            UIHelper.verticalSpace(20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ChipCustom(
                  onTap: () {},
                  title: 'Add',
                ),
                ChipCustom(
                  onTap: () {},
                  title: 'Substract',
                ),
                ChipCustom(
                  onTap: () {},
                  title: 'Multiply',
                ),
                ChipCustom(
                  onTap: () {},
                  title: 'Divide',
                ),
                Column(
                  children: [
                    UIHelper.verticalSpace(20),
                    Row(
                      children: [
                        SizedBox(
                          width: UIHelper.setSp(60),
                          child: TextFormFieldCustom(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: context.textTheme.displayLarge,
                          ),
                        ),
                        UIHelper.horizontalSpace(10),
                        SizedBox(
                          width: UIHelper.setSp(60),
                          child: TextFormFieldCustom(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: context.textTheme.displayLarge,
                          ),
                        ),
                        UIHelper.horizontalSpace(10),
                        Text(
                          '=',
                          style: TextStyle(
                            fontSize: UIHelper.setSp(40),
                          ),
                        ),
                        UIHelper.horizontalSpace(10),
                        Text(
                          '...',
                          style: TextStyle(
                            fontSize: UIHelper.setSp(40),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            UIHelper.verticalSpace(20),
            Text(
              'HISTORY',
              style: context.textTheme.headlineSmall?.copyWith(
                color: ColorConstant.green,
              ),
            ),
            UIHelper.verticalSpace(10),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: UIHelper.padding(horizontal: UIHelper.defaultPadding),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('CALCULATE'),
        ),
      ),
    );
  }
}
