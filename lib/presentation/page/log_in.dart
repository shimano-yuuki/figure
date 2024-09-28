import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/core/extention/string_extention.dart';
import 'package:training_app/presentation/components/custom_text_form_field.dart';
import 'package:training_app/presentation/style/colors.dart';
import 'package:training_app/presentation/gen/assets.gen.dart';

import 'package:training_app/presentation/style/style.dart';

class LogInPage extends ConsumerWidget {
  LogInPage({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: MyColor.darkgreen,
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height: 150,
                    width: 150,
                    child: Assets.images.figureLogo.image()),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //e-mail
                      CustomTextFormField(
                        labelText: 'e-mail',
                        validate: (value) {
                          if (value == null || value.isEmpty) {
                            return 'メールアドレスを入力してください。';
                          } else if (!value.emailFormValidation) {
                            return 'メールアドレスの形式が違います。';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          //TODO :valueでstateを管理する。
                        },
                      ),
                      const SizedBox(height: 10),
                      //password
                      CustomTextFormField(
                        labelText: 'password',
                        validate: (value) {
                          if (value == null || value.isEmpty) {
                            return 'パスワードを入力してください。';
                          } else if (!value.passFormWordValidation) {
                            return 'パスワードの形式が違います。';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          //TODO :valueでstateを管理する。
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.darkYellow),
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                    //   context.go('/home');
                    // }
                  },
                  child: Text(
                    'ログイン',
                    style: AppTextstyle.bold(
                        fontSize: 12, color: MyColor.darkgreen),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //TODO 新規登録画面作成時に遷移を記述
                    // context.go('/');
                  },
                  child: Text(
                    '新規登録はこちら',
                    style: AppTextstyle.bold(
                        fontSize: 12, color: MyColor.darkYellow),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
