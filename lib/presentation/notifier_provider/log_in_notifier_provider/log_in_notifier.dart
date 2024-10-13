import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:training_app/presentation/state/log_in_state/log_in_state.dart';

part 'log_in_notifier.g.dart';

@riverpod
class LogInNotifier extends _$LogInNotifier {
  @override
  LogInState build() => LogInState();

  // emailの更新
  void updateEmail(String eMail) {
    state = state.copyWith(eMail: eMail);
  }

  // パスワード更新
  void updatePassword(String password) {
    state = state.copyWith(password: password);
  }

  //obscure
  //真偽地を反転して更新
  void updateObscure(bool obscure) {
    state = state.copyWith(obscure: !obscure);
  }
}
