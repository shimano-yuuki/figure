import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:training_app/presentation/state/sigin_in_state/sigin_in_state.dart';
part 'sign_in_notifier.g.dart';

@riverpod
class SignInNotifier extends _$SignInNotifier {
  @override
  SignInState build() => SignInState();

  // email（登録）の更新
  void updateRegistrationEmail(String eMailRegistration) {
    state = state.copyWith(eMailRegistration: eMailRegistration);
  }

  // password（登録）の更新
  void updateRegistrationPassword(String passwordRegistration) {
    state = state.copyWith(passwordRegistration: passwordRegistration);
  }

  // password（確認）の更新
  void updateConfirmPassword(String passwordConfirm) {
    state = state.copyWith(passwordConfirm: passwordConfirm);
  }
}
