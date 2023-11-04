import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/text_form_field.dart';

class InputValidationPage extends StatelessWidget {
  const InputValidationPage({super.key});

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
          'Input Validation',
          style: context.textTheme.displayMedium,
        ),
      ),
      body: Padding(
        padding: UIHelper.padding(horizontal: UIHelper.defaultPadding, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi There!',
              style: context.textTheme.headlineLarge!.copyWith(
                color: ColorConstant.primary,
              ),
            ),
            Text(
              'Please enter your name and email :)',
              style: context.textTheme.labelMedium!.copyWith(
                color: ColorConstant.grey,
              ),
            ),
            SizedBox(
              height: UIHelper.setHeight(40),
            ),
            const TextFormFieldCustom(
              title: 'Name',
            ),
            SizedBox(
              height: UIHelper.setHeight(20),
            ),
            const TextFormFieldCustom(
              title: 'Email',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: UIHelper.padding(horizontal: UIHelper.defaultPadding),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Submit'),
        ),
      ),
    );
  }
}
