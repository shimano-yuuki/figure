extension StringExtension on String {
  /// 文字列がメールアドレスであるか判定する
  bool get emailFormValidation {
    //mailの形式チェック
    return RegExp(r'^.+@[a-zA-Z]+\.[a-zA-Z]+(\.?[a-zA-Z]+)$').hasMatch(this);
  }

  //文字列がパスワードの形式を満たすかを判定する。
  bool get passFormWordValidation {
    // パスワード形式チェック（空白文字を含まない）大文字小文字数字それぞれ一つずつ必須
    return RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?!.*\s).{8,}$').hasMatch(this);
  }
}
