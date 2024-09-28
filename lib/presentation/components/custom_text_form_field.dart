import 'package:flutter/material.dart';
import 'package:training_app/presentation/style/colors.dart';
import 'package:training_app/presentation/style/style.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.validate,
    this.onChanged,
  });
  final String labelText;
  final String? Function(String?)? validate;
  final Function(String)? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextstyle.regular(color: MyColor.darkYellow),
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: const UnderlineInputBorder(),
      ),
      validator: widget.validate,
      onChanged: widget.onChanged, // onChangedを使用
    );
  }
}
