import 'package:flutter/material.dart';
import 'package:training_app/presentation/style/colors.dart';
import 'package:training_app/presentation/style/style.dart';

///TODO :カスタムテキストフィールドに移行する。
class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.validate,
  });
  final String labelText;
  final String? Function(String?)? validate;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: AppTextstyle.regular(color: MyColor.darkYellow),
        controller: _controller,
        decoration: InputDecoration(
          labelText: widget.labelText,
          border: const UnderlineInputBorder(),
        ),
        validator: widget.validate);
  }
}
