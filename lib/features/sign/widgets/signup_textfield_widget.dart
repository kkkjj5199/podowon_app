import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podowon_church_app/themes/color.dart';
import '../../../widgets/textForm/InputTextFormFieldWithBorder.dart';

class SignupTextfieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;

  const SignupTextfieldWidget({
    super.key,
    required this.controller,
    required this.title,
    required this.hintText

  });

  @override
  State<SignupTextfieldWidget> createState() => _SignupTextfieldWidgetState();
}

class _SignupTextfieldWidgetState extends State<SignupTextfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(top: 20, bottom: 10),
          child: Text(widget.title)),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: PodowonColor.grey300,// 테두리 색상
                width: 1.0,          // 테두리 두께
              ),
              borderRadius: BorderRadius.circular(8.0), // (선택) 둥근 모서리
            ),
            child: InputTextformfieldWithBorder(
              hintText: widget.hintText,
              controller: widget.controller,
                contentPaddingHorizontal: 10
            ),
          ),
        ],
      ),
    );
  }
}
