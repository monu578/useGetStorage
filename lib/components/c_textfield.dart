import 'package:flutter/material.dart';

class CTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final InputBorder? outLineInputBorder;
  final String? labelText;
  final FocusNode? focusNode;
  final TextInputAction? inputAction;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final int? maxLine;
  final bool enable;
  final Function(String)? onFieldSubmitted;
  final String Function(String?)? validator;
  const CTextFormField({
    this.keyboardType,
    this.suffixIcon,
    this.inputAction,
    this.prefixIcon,
    this.labelText,
    this.maxLine,
    this.enable = true,
    this.focusNode,
    this.outLineInputBorder,
    this.hintText,
    required this.controller,
    Key? key,
    this.onFieldSubmitted,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // ConstrainedBox(
        //   constraints: const BoxConstraints(
        //       maxWidth: 500, minWidth: 30, maxHeight: 300, minHeight: 30),
        //   child:
        TextFormField(
      controller: controller,
      textInputAction: inputAction,
      maxLines: maxLine,
      enabled: enable,
      keyboardType: keyboardType,
      focusNode: focusNode,
      decoration: InputDecoration(border: const OutlineInputBorder(), hintText: hintText, hintStyle: const TextStyle(fontWeight: FontWeight.bold), suffixIcon: suffixIcon, prefixIcon: prefixIcon, labelText: labelText),
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      // )
    );
  }
}
