import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp/application/playground/input_validator/input_validator_cubit.dart';
import 'package:flutter_bootcamp/core/common/assets_path.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';
import 'package:flutter_bootcamp/ui/widgets/text_form_field.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class InputValidationPage extends StatelessWidget {
  const InputValidationPage({super.key});

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
          'Input Validation',
          style: context.textTheme.displayMedium,
        ),
      ),
      body: BlocBuilder<InputValidatorCubit, InputValidatorState>(
        builder: (context, state) {
          return Padding(
            padding:
                UIHelper.padding(horizontal: UIHelper.defaultPadding, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  state.title,
                  style: context.textTheme.headlineLarge!.copyWith(
                    color: ColorConstant.primary,
                  ),
                ),
                Text(
                  state.describtion,
                  style: context.textTheme.labelMedium!.copyWith(
                    color: ColorConstant.grey,
                  ),
                ),
                SizedBox(
                  height: UIHelper.setHeight(40),
                ),
                TextFormFieldCustom(
                  title: 'Name',
                  hintText: 'Enter your name..',
                  validator: (_) => state.showNameError,
                  controller:
                      context.read<InputValidatorCubit>().nameController,
                  preffixIcon: SvgPicture.asset(
                    AssetsPath.userIcon,
                    width: UIHelper.setSp(15),
                  ),
                ),
                SizedBox(
                  height: UIHelper.setHeight(20),
                ),
                TextFormFieldCustom(
                  title: 'Email',
                  hintText: 'Enter your email..',
                  validator: (_) => state.showEmailError,
                  controller:
                      context.read<InputValidatorCubit>().emailController,
                  preffixIcon: SvgPicture.asset(
                    AssetsPath.emailIcon,
                    width: UIHelper.setSp(15),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: UIHelper.padding(horizontal: UIHelper.defaultPadding),
        width: double.infinity,
        child: BlocBuilder<InputValidatorCubit, InputValidatorState>(
          builder: (context, state) {
            return ElevatedButton(
              onPressed: () {
                context.read<InputValidatorCubit>().submit();
              },
              child: const Text('Submit'),
            );
          },
        ),
      ),
    );
  }
}
