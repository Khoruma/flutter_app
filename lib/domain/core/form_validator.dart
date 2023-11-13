import 'package:flutter_bootcamp/domain/core/form_failure.dart';
import 'package:fpdart/fpdart.dart';

class FormValidator {
  FormValidator._();

  static Either<FormFailure, Unit> emailValidator(String input) {
    const emailRegex =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if (input.isEmpty) {
      return left(const FormFailure.empty());
    }
    if (!RegExp(emailRegex).hasMatch(input)) {
      return left(const FormFailure.invalidEmailAddress());
    }
    if (input.length > 50) {
      return left(const FormFailure.tooLong());
    }
    return right(unit);
  }

  static Either<FormFailure, Unit> emptyValidator(String val) {
    if (val.isEmpty) {
      return left(const FormFailure.empty());
    }
    return right(unit);
  }
}
