import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/presentation/components/custom_text_form_field.dart';
import 'package:training_app/presentation/notifier_provider/log_in_page/log_in_page_notifier.dart';
import 'package:training_app/presentation/style/colors.dart';
import 'package:training_app/presentation/gen/assets.gen.dart';

import 'package:training_app/presentation/style/style.dart';
import 'package:training_app/presentation/validation/validate.dart';

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
                      //メールアドレス
                      CustomTextFormField(
                        labelText: 'e-mail',
                        validate: (value) {
                          Validate.eMailValidation(value);
                        },
                        onChanged: (value) {
                          ref
                              .watch(logInPageNotifierProvider.notifier)
                              .updateEmail(value);
                        },
                      ),
                      const SizedBox(height: 10),
                      //パスワード
                      CustomTextFormField(
                        labelText: 'password',
                        validate: (value) {
                          Validate.passwordValidation(value);
                        },
                        onChanged: (value) {
                          ref
                              .watch(logInPageNotifierProvider.notifier)
                              .updatePassword(value);
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
                    if (_formKey.currentState!.validate()) {
                      // context.go('/home');
                    }
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
                    context.go('/sign_in_page');
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
