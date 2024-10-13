// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sigin_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInState {
  String get eMailRegistration => throw _privateConstructorUsedError;
  String get passwordRegistration => throw _privateConstructorUsedError;
  String get passwordConfirm => throw _privateConstructorUsedError;
  bool get passwordObscureRegistration => throw _privateConstructorUsedError;
  bool get passwordObscureConfirm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {String eMailRegistration,
      String passwordRegistration,
      String passwordConfirm,
      bool passwordObscureRegistration,
      bool passwordObscureConfirm});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eMailRegistration = null,
    Object? passwordRegistration = null,
    Object? passwordConfirm = null,
    Object? passwordObscureRegistration = null,
    Object? passwordObscureConfirm = null,
  }) {
    return _then(_value.copyWith(
      eMailRegistration: null == eMailRegistration
          ? _value.eMailRegistration
          : eMailRegistration // ignore: cast_nullable_to_non_nullable
              as String,
      passwordRegistration: null == passwordRegistration
          ? _value.passwordRegistration
          : passwordRegistration // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      passwordObscureRegistration: null == passwordObscureRegistration
          ? _value.passwordObscureRegistration
          : passwordObscureRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordObscureConfirm: null == passwordObscureConfirm
          ? _value.passwordObscureConfirm
          : passwordObscureConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eMailRegistration,
      String passwordRegistration,
      String passwordConfirm,
      bool passwordObscureRegistration,
      bool passwordObscureConfirm});
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eMailRegistration = null,
    Object? passwordRegistration = null,
    Object? passwordConfirm = null,
    Object? passwordObscureRegistration = null,
    Object? passwordObscureConfirm = null,
  }) {
    return _then(_$SignInStateImpl(
      eMailRegistration: null == eMailRegistration
          ? _value.eMailRegistration
          : eMailRegistration // ignore: cast_nullable_to_non_nullable
              as String,
      passwordRegistration: null == passwordRegistration
          ? _value.passwordRegistration
          : passwordRegistration // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      passwordObscureRegistration: null == passwordObscureRegistration
          ? _value.passwordObscureRegistration
          : passwordObscureRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordObscureConfirm: null == passwordObscureConfirm
          ? _value.passwordObscureConfirm
          : passwordObscureConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  _$SignInStateImpl(
      {this.eMailRegistration = '',
      this.passwordRegistration = '',
      this.passwordConfirm = '',
      this.passwordObscureRegistration = false,
      this.passwordObscureConfirm = false});

  @override
  @JsonKey()
  final String eMailRegistration;
  @override
  @JsonKey()
  final String passwordRegistration;
  @override
  @JsonKey()
  final String passwordConfirm;
  @override
  @JsonKey()
  final bool passwordObscureRegistration;
  @override
  @JsonKey()
  final bool passwordObscureConfirm;

  @override
  String toString() {
    return 'SignInState(eMailRegistration: $eMailRegistration, passwordRegistration: $passwordRegistration, passwordConfirm: $passwordConfirm, passwordObscureRegistration: $passwordObscureRegistration, passwordObscureConfirm: $passwordObscureConfirm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.eMailRegistration, eMailRegistration) ||
                other.eMailRegistration == eMailRegistration) &&
            (identical(other.passwordRegistration, passwordRegistration) ||
                other.passwordRegistration == passwordRegistration) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm) &&
            (identical(other.passwordObscureRegistration,
                    passwordObscureRegistration) ||
                other.passwordObscureRegistration ==
                    passwordObscureRegistration) &&
            (identical(other.passwordObscureConfirm, passwordObscureConfirm) ||
                other.passwordObscureConfirm == passwordObscureConfirm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      eMailRegistration,
      passwordRegistration,
      passwordConfirm,
      passwordObscureRegistration,
      passwordObscureConfirm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  factory _SignInState(
      {final String eMailRegistration,
      final String passwordRegistration,
      final String passwordConfirm,
      final bool passwordObscureRegistration,
      final bool passwordObscureConfirm}) = _$SignInStateImpl;

  @override
  String get eMailRegistration;
  @override
  String get passwordRegistration;
  @override
  String get passwordConfirm;
  @override
  bool get passwordObscureRegistration;
  @override
  bool get passwordObscureConfirm;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
