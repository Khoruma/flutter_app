// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_validation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputValidationEntity {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputValidationEntityCopyWith<InputValidationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputValidationEntityCopyWith<$Res> {
  factory $InputValidationEntityCopyWith(InputValidationEntity value,
          $Res Function(InputValidationEntity) then) =
      _$InputValidationEntityCopyWithImpl<$Res, InputValidationEntity>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class _$InputValidationEntityCopyWithImpl<$Res,
        $Val extends InputValidationEntity>
    implements $InputValidationEntityCopyWith<$Res> {
  _$InputValidationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InputValidationEntityCopyWith<$Res>
    implements $InputValidationEntityCopyWith<$Res> {
  factory _$$_InputValidationEntityCopyWith(_$_InputValidationEntity value,
          $Res Function(_$_InputValidationEntity) then) =
      __$$_InputValidationEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$_InputValidationEntityCopyWithImpl<$Res>
    extends _$InputValidationEntityCopyWithImpl<$Res, _$_InputValidationEntity>
    implements _$$_InputValidationEntityCopyWith<$Res> {
  __$$_InputValidationEntityCopyWithImpl(_$_InputValidationEntity _value,
      $Res Function(_$_InputValidationEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$_InputValidationEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputValidationEntity extends _InputValidationEntity {
  const _$_InputValidationEntity({required this.name, required this.email})
      : super._();

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'InputValidationEntity(name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputValidationEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputValidationEntityCopyWith<_$_InputValidationEntity> get copyWith =>
      __$$_InputValidationEntityCopyWithImpl<_$_InputValidationEntity>(
          this, _$identity);
}

abstract class _InputValidationEntity extends InputValidationEntity {
  const factory _InputValidationEntity(
      {required final String name,
      required final String email}) = _$_InputValidationEntity;
  const _InputValidationEntity._() : super._();

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_InputValidationEntityCopyWith<_$_InputValidationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
