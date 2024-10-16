// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogInState {
  String get eMail => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get obscure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInStateCopyWith<LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInStateCopyWith<$Res> {
  factory $LogInStateCopyWith(
          LogInState value, $Res Function(LogInState) then) =
      _$LogInStateCopyWithImpl<$Res, LogInState>;
  @useResult
  $Res call({String eMail, String password, bool obscure});
}

/// @nodoc
class _$LogInStateCopyWithImpl<$Res, $Val extends LogInState>
    implements $LogInStateCopyWith<$Res> {
  _$LogInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eMail = null,
    Object? password = null,
    Object? obscure = null,
  }) {
    return _then(_value.copyWith(
      eMail: null == eMail
          ? _value.eMail
          : eMail // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      obscure: null == obscure
          ? _value.obscure
          : obscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogInStateImplCopyWith<$Res>
    implements $LogInStateCopyWith<$Res> {
  factory _$$LogInStateImplCopyWith(
          _$LogInStateImpl value, $Res Function(_$LogInStateImpl) then) =
      __$$LogInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eMail, String password, bool obscure});
}

/// @nodoc
class __$$LogInStateImplCopyWithImpl<$Res>
    extends _$LogInStateCopyWithImpl<$Res, _$LogInStateImpl>
    implements _$$LogInStateImplCopyWith<$Res> {
  __$$LogInStateImplCopyWithImpl(
      _$LogInStateImpl _value, $Res Function(_$LogInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eMail = null,
    Object? password = null,
    Object? obscure = null,
  }) {
    return _then(_$LogInStateImpl(
      eMail: null == eMail
          ? _value.eMail
          : eMail // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      obscure: null == obscure
          ? _value.obscure
          : obscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LogInStateImpl implements _LogInState {
  _$LogInStateImpl({this.eMail = '', this.password = '', this.obscure = false});

  @override
  @JsonKey()
  final String eMail;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool obscure;

  @override
  String toString() {
    return 'LogInState(eMail: $eMail, password: $password, obscure: $obscure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInStateImpl &&
            (identical(other.eMail, eMail) || other.eMail == eMail) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.obscure, obscure) || other.obscure == obscure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eMail, password, obscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInStateImplCopyWith<_$LogInStateImpl> get copyWith =>
      __$$LogInStateImplCopyWithImpl<_$LogInStateImpl>(this, _$identity);
}

abstract class _LogInState implements LogInState {
  factory _LogInState(
      {final String eMail,
      final String password,
      final bool obscure}) = _$LogInStateImpl;

  @override
  String get eMail;
  @override
  String get password;
  @override
  bool get obscure;
  @override
  @JsonKey(ignore: true)
  _$$LogInStateImplCopyWith<_$LogInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
