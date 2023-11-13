import 'package:flutter_bootcamp/domain/core/form_failure.dart';
import 'package:flutter_bootcamp/domain/core/form_validator.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_validation_entity.freezed.dart';

@freezed
class InputValidationEntity with _$InputValidationEntity {
  const InputValidationEntity._();

  const factory InputValidationEntity({
    required String name,
    required String email,
  }) = _InputValidationEntity;

  factory InputValidationEntity.empty() =>
      const InputValidationEntity(name: '', email: '');

  Option<FormFailure> get failureOption {
    return FormValidator.emptyValidator(name)
        .andThen(() => FormValidator.emailValidator(email))
        .fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }

  String? get emailErrorMsg {
    return FormValidator.emailValidator(email).fold(
        (failure) => failure.map(
            empty: (_) => "Email must not be empty",
            tooLong: (_) => "Email is too long",
            invalidEmailAddress: (_) => "Invalid email address"),
        (data) => null);
  }

  String? get namelErrorMsg {
    return FormValidator.emptyValidator(email).fold(
        (failure) => failure.maybeMap(
              orElse: () => null,
              empty: (_) => "Name must not be empty",
            ),
        (data) => null);
  }
}
