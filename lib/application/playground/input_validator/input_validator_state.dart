part of 'input_validator_cubit.dart';

@freezed
class InputValidatorState with _$InputValidatorState {
  const InputValidatorState._();
  const factory InputValidatorState({
    required InputValidationEntity model,
    required bool showError,
    required bool changeState,
  }) = _InputValidationState;

  factory InputValidatorState.initial() => InputValidatorState(
        model: InputValidationEntity.empty(),
        showError: false,
        changeState: false,
      );

  InputValidatorState get unmodified => copyWith(changeState: false);

  String? get showNameError => showError ? model.namelErrorMsg : null;
  String? get showEmailError => showError ? model.emailErrorMsg : null;

  String get title {
    if (!changeState) return 'Hi There';

    return 'Hi ${model.name}';
  }

  String get describtion {
    if (!changeState) return 'Please enter your name and email';

    return 'Your email was ${model.email}';
  }
}
