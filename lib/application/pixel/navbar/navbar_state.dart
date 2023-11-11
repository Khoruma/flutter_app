import 'package:freezed_annotation/freezed_annotation.dart';

part 'navbar_state.freezed.dart';

@freezed
abstract class NavbarState with _$NavbarState {
  const factory NavbarState.home() = Home;
  const factory NavbarState.explore() = Explore;
  const factory NavbarState.collection() = Collection;
  const factory NavbarState.settings() = Setting;
}
