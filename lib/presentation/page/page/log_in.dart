import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/presentation/style/colors.dart';
import 'package:training_app/presentation/gen/assets.gen.dart';
import 'package:training_app/presentation/page/page/widgets/email_text_form_field.dart';
import 'package:training_app/presentation/page/page/widgets/password_text_form_field.dart';
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
                    child: Image.asset(Assets.images.figureLogo.path)),
                Form(
                  key: _formKey,
                  child: const Column(
                    children: [
                      EmailTextFormField(labelText: 'e-mail'),
                      SizedBox(height: 10),
                      PasswordTextFormField(labelText: 'password'),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.darkyellow),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.go('/home');
                    }
                  },
                  child: Text(
                    'ログイン',
                    style: AppTextstyle.bold(12, color: MyColor.darkgreen),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      //TODO 新規登録画面作成時に遷移を記述
                      context.go('/');
                    },
                    child: Text(
                      '新規登録はこちら',
                      style: AppTextstyle.bold(12, color: MyColor.darkyellow),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
