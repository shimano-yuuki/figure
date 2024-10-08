import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/core/extention/string_extention.dart';
import 'package:training_app/presentation/app_router.dart';
import 'package:training_app/presentation/components/custom_text_form_field.dart';
import 'package:training_app/presentation/style/colors.dart';
import 'package:training_app/presentation/gen/assets.gen.dart';

import 'package:training_app/presentation/style/style.dart';
import 'package:training_app/presentation/validation/validate.dart';

class SignInPage extends ConsumerWidget {
  SignInPage({super.key});
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
                        labelText: 'e-mail（登録）',
                        validate: (value) {
                          Validate.eMailValidation(value);
                          return null;
                        },
                        onChanged: (value) {
                          //TODO :valueでstateを管理する。
                        },
                      ),
                      const SizedBox(height: 10),
                      //password
                      CustomTextFormField(
                        labelText: 'password（登録）',
                        validate: (value) {
                          Validate.passwordValidation(value);
                          return null;
                        },
                        onChanged: (value) {
                          //TODO :valueでstateを管理する。
                        },
                      ),
                      CustomTextFormField(
                        labelText: 'password（確認）',
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
                  child: Text(
                    '新規登録',
                    style: AppTextstyle.bold(
                        fontSize: 12, color: MyColor.darkgreen),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.goNamed(RouteNames.homePage);
                    }
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  'パスワードには大文字、小文字、数字を含めてください',
                  style: AppTextstyle.regular(
                      fontSize: 10, color: MyColor.darkYellow),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
