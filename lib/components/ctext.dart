import 'package:flutter/material.dart';

class CText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final int? maxLine;
  final TextOverflow? overflow;
  final  TextAlign? textAlignment;
  final  bold;
  final Color? decorationcolor;
  final decoration;
  const CText(
      {Key? key,
      this.color,
      this.decoration,
      this.textAlignment,
       this.maxLine,
       this.overflow,
      this.size,
      this.bold,
      this.decorationcolor,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontFamily: 'app_font',
          fontWeight: bold,
          fontSize: size,
          decoration: decoration,
          decorationColor: decorationcolor),
    );
  }
}
