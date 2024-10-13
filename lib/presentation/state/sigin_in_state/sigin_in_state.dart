import 'package:freezed_annotation/freezed_annotation.dart';

part 'sigin_in_state.freezed.dart';

@freezed // freezedを使うためのアノテーション
class SignInState with _$SignInState {
  factory SignInState({
    @Default('') String eMailRegistration,
    @Default('') String passwordRegistration,
    @Default('') String passwordConfirm,
    @Default(false) bool passwordObscureRegistration,
    @Default(false) bool passwordObscureConfirm,
  }) = _SignInState;
}
