extension StringExtension on String {
  /// 文字列がメールアドレスであるか判定する
  /// マッチしていたら、trueしていなかったらfalseを返却する。
  bool get emailFormValidation {
    //mailの形式チェック
    return RegExp(r'^.+@[a-zA-Z]+\.[a-zA-Z]+(\.?[a-zA-Z]+)$').hasMatch(this);
  }

  bool get passFormWordValidation {
    //パスワード形式チェック
    return RegExp(r'^(?=.*[A-Z])(?=.*[a-z]).{8,}$').hasMatch(this);
  }
}
