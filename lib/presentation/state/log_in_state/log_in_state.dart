import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_state.freezed.dart';

@freezed // freezedを使うためのアノテーション
class LogInState with _$LogInState {
  factory LogInState({
    @Default('') String eMail,
    @Default('') String password,
    @Default(false) bool obscure,
  }) = _LogInState;
}
