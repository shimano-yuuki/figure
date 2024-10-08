import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:training_app/presentation/state/sigin_in_state/sigin_in_state.dart';
part 'sign_in_notifier.g.dart';

@riverpod
class SignInNotifier extends _$SignInNotifier {
  @override
  SignInState build() => SignInState();

  // email（登録）の更新
  void updateRegistrationEmail(String registrationEMail) {
    state = state.copyWith(registrationEMail: registrationEMail);
  }

  // email（登録）の更新
  void updateConfirmEmail(String confirmEMail) {
    state = state.copyWith(confirmEMail: confirmEMail);
  }

  // パスワード更新
  void updatePassword(String password) {
    state = state.copyWith(password: password);
  }
}
