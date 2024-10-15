import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/presentation/app_router.dart';
import 'package:training_app/presentation/components/custom_text_form_field.dart';
import 'package:training_app/presentation/notifier_provider/log_in_notifier_provider/log_in_notifier.dart';
import 'package:training_app/presentation/style/colors.dart';
import 'package:training_app/presentation/gen/assets.gen.dart';

import 'package:training_app/presentation/style/style.dart';
import 'package:training_app/presentation/validation/validate.dart';

class LogInPage extends ConsumerWidget {
  LogInPage({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logInState = ref.watch(logInNotifierProvider);
    final logInProvider = ref.watch(logInNotifierProvider.notifier);
    return Scaffold(
      backgroundColor: MyColor.darkgreen,
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset(Assets.images.svgs.figureLogo),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //メールアドレス
                      CustomTextFormField(
                        labelText: 'e-mail',
                        validate: (value) {
                          return Validate.eMailValidation(value);
                        },
                        onChanged: (value) {
                          logInProvider.updateEmail(value);
                        },
                      ),
                      const SizedBox(height: 10),
                      //パスワード
                      CustomTextFormField(
                        labelText: 'password',
                        validate: (value) {
                          return Validate.passwordValidation(value);
                        },
                        obscureWidget: IconButton(
                          icon: Icon(logInState.obscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            logInProvider.updateObscure(logInState.obscure);
                          },
                        ),
                        obscureText: logInState.obscure,
                        onChanged: (value) {
                          logInProvider.updatePassword(value);
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
                    'ログイン',
                    style: AppTextstyle.bold(
                        fontSize: 12, color: MyColor.darkgreen),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.goNamed(RouteNames.homePage);
                    }
                  },
                ),
                TextButton(
                  child: Text(
                    '新規登録はこちら',
                    style: AppTextstyle.bold(
                        fontSize: 12, color: MyColor.darkYellow),
                  ),
                  onPressed: () {
                    context.goNamed(RouteNames.signInPage);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
