import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final InputBorder? outLineInputBorder;
  final String? labelText;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;

  final Widget? sufixIcon;
  final Widget? prefixIcon;

  final TextInputType? keyboardType;
  final int? maxLine;
  final bool enable;

  final Function(String)? onFieldSubmitted;
  final String Function(String?)? validator;
  final void Function()? onTap;
  const CTextFormField({
    this.keyboardType,
    this.sufixIcon,
    this.prefixIcon,
    this.labelText,
    this.onChanged,
    this.maxLine,
    this.enable = true,
    this.focusNode,
    this.outLineInputBorder,
    this.hintText,
    required this.controller,
    Key? key,
    this.onFieldSubmitted,
    this.validator,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      onChanged: onChanged,
      maxLines: maxLine,
      enabled: enable,
      keyboardType: keyboardType,
      focusNode: focusNode,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(color: Colors.green, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(color: Colors.grey, width: 2),
          ),
          border: outLineInputBorder,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: sufixIcon,
          prefixIcon: prefixIcon,
          labelText: labelText),
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
