import 'package:freezed_annotation/freezed_annotation.dart';

part 'sigin_in_state.freezed.dart';

@freezed // freezedを使うためのアノテーション
class SignInState with _$SignInState {
  factory SignInState({
    @Default('') String registrationEMail,
    @Default('') String confirmEMail,
    @Default('') String password,
  }) = _SignInState;
}
