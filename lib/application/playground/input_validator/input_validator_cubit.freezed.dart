// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_validator_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputValidatorState {
  InputValidationEntity get model => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get changeState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputValidatorStateCopyWith<InputValidatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputValidatorStateCopyWith<$Res> {
  factory $InputValidatorStateCopyWith(
          InputValidatorState value, $Res Function(InputValidatorState) then) =
      _$InputValidatorStateCopyWithImpl<$Res, InputValidatorState>;
  @useResult
  $Res call({InputValidationEntity model, bool showError, bool changeState});

  $InputValidationEntityCopyWith<$Res> get model;
}

/// @nodoc
class _$InputValidatorStateCopyWithImpl<$Res, $Val extends InputValidatorState>
    implements $InputValidatorStateCopyWith<$Res> {
  _$InputValidatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? showError = null,
    Object? changeState = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InputValidationEntity,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      changeState: null == changeState
          ? _value.changeState
          : changeState // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputValidationEntityCopyWith<$Res> get model {
    return $InputValidationEntityCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InputValidationStateCopyWith<$Res>
    implements $InputValidatorStateCopyWith<$Res> {
  factory _$$_InputValidationStateCopyWith(_$_InputValidationState value,
          $Res Function(_$_InputValidationState) then) =
      __$$_InputValidationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InputValidationEntity model, bool showError, bool changeState});

  @override
  $InputValidationEntityCopyWith<$Res> get model;
}

/// @nodoc
class __$$_InputValidationStateCopyWithImpl<$Res>
    extends _$InputValidatorStateCopyWithImpl<$Res, _$_InputValidationState>
    implements _$$_InputValidationStateCopyWith<$Res> {
  __$$_InputValidationStateCopyWithImpl(_$_InputValidationState _value,
      $Res Function(_$_InputValidationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? showError = null,
    Object? changeState = null,
  }) {
    return _then(_$_InputValidationState(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InputValidationEntity,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      changeState: null == changeState
          ? _value.changeState
          : changeState // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InputValidationState extends _InputValidationState {
  const _$_InputValidationState(
      {required this.model, required this.showError, required this.changeState})
      : super._();

  @override
  final InputValidationEntity model;
  @override
  final bool showError;
  @override
  final bool changeState;

  @override
  String toString() {
    return 'InputValidatorState(model: $model, showError: $showError, changeState: $changeState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputValidationState &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.changeState, changeState) ||
                other.changeState == changeState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, showError, changeState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputValidationStateCopyWith<_$_InputValidationState> get copyWith =>
      __$$_InputValidationStateCopyWithImpl<_$_InputValidationState>(
          this, _$identity);
}

abstract class _InputValidationState extends InputValidatorState {
  const factory _InputValidationState(
      {required final InputValidationEntity model,
      required final bool showError,
      required final bool changeState}) = _$_InputValidationState;
  const _InputValidationState._() : super._();

  @override
  InputValidationEntity get model;
  @override
  bool get showError;
  @override
  bool get changeState;
  @override
  @JsonKey(ignore: true)
  _$$_InputValidationStateCopyWith<_$_InputValidationState> get copyWith =>
      throw _privateConstructorUsedError;
}
