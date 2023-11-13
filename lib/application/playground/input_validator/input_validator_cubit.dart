import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/domain/input_validation/input_validation_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_validator_cubit.freezed.dart';
part 'input_validator_state.dart';

class InputValidatorCubit extends Cubit<InputValidatorState> {
  late TextEditingController nameController;
  late TextEditingController emailController;

  InputValidatorCubit() : super(InputValidatorState.initial()) {
    nameController = TextEditingController()
      ..addListener(() {
        inputName(nameController.text);
      });
    emailController = TextEditingController()
      ..addListener(() {
        inputEmail(emailController.text);
      });
  }

  void inputName(String val) {
    emit(state.unmodified.copyWith.model(name: val));
  }

  void inputEmail(String val) {
    emit(state.unmodified.copyWith.model(email: val));
  }

  void submit() {
    if (state.model.failureOption.isNone()) {
      emit(state.copyWith(changeState: true));
    } else {
      emit(state.unmodified.copyWith(showError: true));
    }
  }
}
