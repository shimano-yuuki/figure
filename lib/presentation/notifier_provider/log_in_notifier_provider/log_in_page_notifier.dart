import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:training_app/presentation/state/log_in_state/log_in_page_state.dart';

part 'log_in_page_notifier.g.dart';

@riverpod
class LogInPageNotifier extends _$LogInPageNotifier {
  @override
  LogInPageState build() => LogInPageState();

  // emailの更新
  void updateEmail(String eMail) {
    state = state.copyWith(eMail: eMail);
  }

  // パスワード更新
  void updatePassword(String password) {
    state = state.copyWith(password: password);
  }
}
