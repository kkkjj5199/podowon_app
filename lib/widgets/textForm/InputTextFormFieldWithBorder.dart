import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podowon_church_app/themes/color.dart';

class InputTextformfieldWithBorder extends StatefulWidget {
  final String? hintText;
  final bool? obscureText;
  final TextEditingController controller;
  final double? contentPaddingHorizontal;

  const InputTextformfieldWithBorder(
      {super.key, required this.hintText, this.obscureText = false, required this.controller, this.contentPaddingHorizontal = 0});

  @override
  State<InputTextformfieldWithBorder> createState() =>
      _InputTextformfieldState();
}

class _InputTextformfieldState extends State<InputTextformfieldWithBorder> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorHeight: 15.0,
      cursorColor: PodowonColor.mainColor,
      cursorErrorColor: Colors.red,
      obscureText: widget.obscureText!,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: TextStyle(fontSize: 13, color: PodowonColor.grey600),
          contentPadding: EdgeInsets.symmetric(
              horizontal: widget.contentPaddingHorizontal!)
      ),
    );
  }
}
