import 'package:training_app/core/extention/string_extention.dart';

class Validate {
  //パスワードチェック
  static String passwordValidation(String? password) {
    if (password == null || password.isEmpty) {
      return 'パスワードを入力してください。';
    } else if (!password.passFormWordValidation) {
      return 'パスワードの形式が違います。';
    }
    return '';
  }

  //メールアドレスチェック
  static String eMailValidation(String? email) {
    if (email == null || email.isEmpty) {
      return 'パスワードを入力してください。';
    } else if (!email.passFormWordValidation) {
      return 'パスワードの形式が違います。';
    }
    return '';
  }
}
