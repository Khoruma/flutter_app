import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';

class DummyCard extends StatelessWidget {
  const DummyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: UIHelper.padding(vertical: 10, horizontal: 10),
      margin: UIHelper.padding(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstant.grey,
          width: 0.5,
        ),
        borderRadius: UIHelper.borderRadiusCircular(all: 10),
      ),
      child: Row(
        children: [
          Container(
            height: UIHelper.setWidth(85),
            width: UIHelper.setHeight(85),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/imgs/dummy.png'),
              ),
              borderRadius: UIHelper.borderRadiusCircular(all: 10),
            ),
          ),
          Expanded(
            flex: 15,
            child: Padding(
              padding: UIHelper.padding(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'How can I be Flutter Developer Expert?',
                    style: context.textTheme.titleLarge!.copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: UIHelper.setHeight(15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Jill Lepore',
                              style: context.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: ' • ',
                              style: context.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: '23 May 23',
                              style: context.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: ColorConstant.primary,
                        size: UIHelper.setHeight(18),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
