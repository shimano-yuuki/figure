import 'package:training_app/core/extention/string_extention.dart';

class Validate {
  //パスワードチェック
  static String? passwordValidation(String? password) {
    if (password == null || password.isEmpty) {
      return '入力してください';
    } else if (!password.passFormWordValidation) {
      return '形式が違います';
    }
    return null;
  }

  //パスワード確認チェック
  static String? passwordConfirmValidation(
      String? passwordConfirm, String passwordRegistration) {
    if (passwordConfirm == null || passwordConfirm.isEmpty) {
      return '入力してください';
    } else if (!passwordConfirm.passFormWordValidation) {
      return '形式が違います';
    } else if (passwordConfirm != passwordRegistration) {
      return '同じパスワードを入力してください';
    }
    return null;
  }

  //メールアドレスチェック
  static String? eMailValidation(String? email) {
    if (email == null || email.isEmpty) {
      return '入力してください';
    } else if (!email.emailFormValidation) {
      return '形式が違います';
    }
    return null;
  }
}
