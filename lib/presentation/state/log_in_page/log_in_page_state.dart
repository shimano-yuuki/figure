import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_page_state.freezed.dart';

@freezed // freezedを使うためのアノテーション
class LogInPageState with _$LogInPageState {
  factory LogInPageState({
    @Default('') String eMail,
    @Default('') String password,
  }) = _LogInPageState;
}
