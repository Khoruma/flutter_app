import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp/application/playground/counter/counter_cubit.dart';
import 'package:flutter_bootcamp/core/utils/text_theme_extension.dart';
import 'package:flutter_bootcamp/core/utils/ui_helper.dart';

@RoutePage()
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

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
          'Counter App',
          style: context.textTheme.displayLarge,
        ),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              '$state',
              style: context.textTheme.displayLarge,
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
            child: const Text('+'),
          ),
          UIHelper.verticalSpace(10),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
            child: const Text('-'),
          ),
        ],
      ),
    );
  }
}
