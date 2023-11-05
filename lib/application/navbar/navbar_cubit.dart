import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationItem { home, explore, colletion, setting }

class NavbarCubit extends Cubit<NavigationItem> {
  NavbarCubit() : super(NavigationItem.home);

  void setItem(NavigationItem item) {
    emit(item);
  }
}
