import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';

class DummySmallCard extends StatelessWidget {
  String title;

  DummySmallCard({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: UIHelper.padding(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstant.grey,
          width: 0.5,
        ),
        borderRadius: UIHelper.borderRadiusCircular(all: 10),
      ),
      child: Column(
        children: [
          Container(
            height: UIHelper.setHeight(40),
            width: UIHelper.setWidth(80),
            decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/imgs/dummy.png'),
              ),
              borderRadius: UIHelper.borderRadiusCircular(all: 10),
            ),
          ),
          SizedBox(
            height: UIHelper.setHeight(10),
          ),
          Text(
            '$title Image',
            style: context.textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
