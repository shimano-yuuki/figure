import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/presentation/app_router.dart';
import 'package:training_app/presentation/components/custom_text_form_field.dart';
import 'package:training_app/presentation/notifier_provider/sign_in_notifier_provider/sign_in_notifier.dart';
import 'package:training_app/presentation/style/colors.dart';
import 'package:training_app/presentation/gen/assets.gen.dart';

import 'package:training_app/presentation/style/style.dart';
import 'package:training_app/presentation/validation/validate.dart';

class SignInPage extends ConsumerWidget {
  SignInPage({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInState = ref.watch(signInNotifierProvider);
    final signInProvider = ref.watch(signInNotifierProvider.notifier);
    return Scaffold(
      backgroundColor: MyColor.darkgreen,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SvgPicture.asset(Assets.images.svgs.figureLogo2),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          // e-mail（登録）
                          CustomTextFormField(
                            labelText: 'e-mail（登録）',
                            validate: (value) {
                              return Validate.eMailValidation(value);
                            },
                            onChanged: (value) {
                              signInProvider.updateRegistrationEmail(value);
                            },
                          ),
                          const SizedBox(height: 10),
                          // password(登録)
                          CustomTextFormField(
                            labelText: 'password（登録）',
                            validate: (value) {
                              return Validate.passwordValidation(value);
                            },
                            obscureText:
                                signInState.passwordObscureRegistration,
                            obscureWidget: IconButton(
                              icon: Icon(signInState.passwordObscureRegistration
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                signInProvider.updateRegistratioObscure(
                                    signInState.passwordObscureRegistration);
                              },
                            ),
                            onChanged: (value) {
                              signInProvider.updateRegistrationPassword(value);
                            },
                          ),
                          // password（確認）
                          CustomTextFormField(
                            labelText: 'password（確認）',
                            validate: (value) {
                              return Validate.passwordConfirmValidation(
                                  value, signInState.passwordConfirm);
                            },
                            obscureText: signInState.passwordObscureConfirm,
                            obscureWidget: IconButton(
                              icon: Icon(signInState.passwordObscureConfirm
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                signInProvider.updateConfirmObscure(
                                    signInState.passwordObscureConfirm);
                              },
                            ),
                            onChanged: (value) {
                              signInProvider.updateConfirmPassword(value);
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
          // 戻るボタンを左上に配置
          Positioned(
            top: 60,
            left: 20,
            child: IconButton(
              iconSize: 30,
              icon: const Icon(Icons.arrow_back, color: MyColor.darkYellow),
              onPressed: () {
                context.pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
