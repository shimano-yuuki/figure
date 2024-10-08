import 'package:training_app/core/extention/string_extention.dart';

class Validate {
  //パスワードチェック
  static String? passwordValidation(String? password) {
    if (password == null || password.isEmpty) {
      return 'パスワードを入力してください。';
    } else if (!password.passFormWordValidation) {
      return 'パスワードの形式が違います。';
    }
    return null;
  }

  //パスワード確認チェック
  static String? passwordConfirmValidation(
      String? passwordConfirm, String passwordRegistration) {
    if (passwordConfirm == null || passwordConfirm.isEmpty) {
      return 'パスワードを入力してください。';
    } else if (!passwordConfirm.passFormWordValidation) {
      return 'パスワードの形式が違います。';
    } else if (passwordConfirm != passwordRegistration) {
      return '同じパスワードを入力してください';
    }
    return null;
  }

  //メールアドレスチェック
  static String? eMailValidation(String? email) {
    if (email == null || email.isEmpty) {
      return 'emailを入力してください';
    } else if (!email.emailFormValidation) {
      return 'emailの形式が違います。';
    }
    return null;
  }
}
