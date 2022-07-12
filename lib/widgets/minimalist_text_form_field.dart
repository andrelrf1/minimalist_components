import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MinimalistTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final String? hintText;
  final String? counterText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final int? maxLength;
  final bool? enabled;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatter;
  final Color? fillColor;

  const MinimalistTextFormField({
    this.controller,
    this.suffixIcon,
    this.hintText,
    this.counterText,
    this.keyboardType,
    this.obscureText = false,
    this.maxLength,
    this.enabled,
    this.onEditingComplete,
    this.onChanged,
    this.textInputAction,
    this.validator,
    this.inputFormatter,
    this.fillColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
        filled: true,
        fillColor: fillColor ?? Colors.white70,
        counterText: counterText,
      ),
      inputFormatters: inputFormatter,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLength: maxLength,
      enabled: enabled,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      textInputAction: textInputAction,
      validator: validator,
    );
  }
}
