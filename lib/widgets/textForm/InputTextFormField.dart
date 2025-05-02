import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podowon_church_app/themes/color.dart';

class InputTextformfield extends StatefulWidget {
  final String? hintText;
  final bool? obscureText;
  final TextEditingController controller;

  const InputTextformfield({super.key, required this.hintText, this.obscureText = false, required this.controller});

  @override
  State<InputTextformfield> createState() => _InputTextformfieldState();
}

class _InputTextformfieldState extends State<InputTextformfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorHeight: 15.0,
      cursorColor: PodowonColor.mainColor,
      cursorErrorColor: Colors.red,
      obscureText: widget.obscureText!,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(fontSize: 13, color: PodowonColor.grey600),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey), // 기본 밑줄 색
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey), // 포커스 시 같은 색
        ),
      ),
    );
  }
}
