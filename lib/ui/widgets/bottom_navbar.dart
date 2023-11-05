import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootcamp/application/navbar/navbar_cubit.dart';
import 'package:flutter_bootcamp/core/common/assets_path.dart';
import 'package:flutter_bootcamp/core/common/colors_const.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavbarCubit navbarCubit = context.read<NavbarCubit>();
    final NavigationItem currentItem =
        context.select((NavbarCubit c) => c.state);

    return BlocBuilder<NavbarCubit, NavigationItem>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: NavigationItem.values.indexOf(currentItem),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsPath.homeIcon,
                color: currentItem == NavigationItem.home
                    ? ColorConstant.primary
                    : ColorConstant.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsPath.searchIcon,
                color: currentItem == NavigationItem.explore
                    ? ColorConstant.primary
                    : ColorConstant.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsPath.favoriteIcon,
                color: currentItem == NavigationItem.colletion
                    ? ColorConstant.primary
                    : ColorConstant.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetsPath.settingIcon,
                color: currentItem == NavigationItem.setting
                    ? ColorConstant.primary
                    : ColorConstant.grey,
              ),
              label: '',
            ),
          ],
          onTap: (index) {
            final selectedItem = NavigationItem.values[index];
            navbarCubit.setItem(selectedItem);
          },
        );
      },
    );
  }
}
