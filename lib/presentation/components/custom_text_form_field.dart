import 'package:flutter/material.dart';
import 'package:training_app/presentation/style/colors.dart';
import 'package:training_app/presentation/style/style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.validate,
    this.onChanged,
    this.obscureText = false,
    this.obscureWidget,
  });
  final String labelText;
  final String? Function(String?)? validate;
  final Function(String)? onChanged;

  final bool obscureText;
  final Widget? obscureWidget;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: AppTextstyle.regular(color: MyColor.darkYellow),
      decoration: InputDecoration(
        labelText: labelText,
        border: const UnderlineInputBorder(),
        suffixIcon: obscureWidget,
      ),
      validator: validate,
      onChanged: onChanged,
    );
  }
}
