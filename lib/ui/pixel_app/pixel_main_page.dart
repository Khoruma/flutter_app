import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp/application/navbar/navbar_cubit.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_collection_page.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_explore_page.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_home_page.dart';
import 'package:flutter_bootcamp/ui/pixel_app/pixel_setting_page.dart';
import 'package:flutter_bootcamp/ui/widgets/bottom_navbar.dart';

class PixelMainPage extends StatelessWidget {
  const PixelMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<NavbarCubit, NavigationItem>(
          builder: (context, state) {
            switch (state) {
              case NavigationItem.home:
                return const PixelHomePage();
              case NavigationItem.colletion:
                return const PixelCollectionPage();
              case NavigationItem.explore:
                return const PixelExplorePage();
              case NavigationItem.setting:
                return const PixelSettingPage();
            }
          },
        ),
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
