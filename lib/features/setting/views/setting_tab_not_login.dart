import 'package:flutter/material.dart';
import 'package:podowon_church_app/core/routes/app_routes.dart';
import 'package:podowon_church_app/themes/color.dart';
import 'package:podowon_church_app/widgets/textForm/InputTextFormField.dart';

import '../../../themes/font_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: PodowonColor.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/top_logo.png', scale: 2.5),
            ),
            SizedBox(height: 50),
            InputTextformfield(hintText: '아이디', controller: _idController),
            SizedBox(height: 30),
            InputTextformfield(
              hintText: '비밀번호',
              obscureText: true,
              controller: _pwdController,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: PodowonColor.mainColor,
                minimumSize: Size(double.infinity, 48),
              ),
              onPressed: () {},
              child: Text(
                '로그인',
                style: pTextStyles.s15w500cWhite
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: PodowonColor.white,
                elevation: 0,
                minimumSize: Size(double.infinity, 48),
                  side: BorderSide(width: 1, color: PodowonColor.mainColor)
              ),
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.signUp);
              },
              child: Text(
                '회원가입',
                style: pTextStyles.s15w500cMain
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: (){},
                    splashColor: Colors.transparent, // 물결 색 제/
                    child: Text('아이디 찾기', style: pTextStyles.s11w500cBlack)),
                InkWell(
                    onTap: (){},
                    splashColor: Colors.transparent, // 물결 색 제거
                    child: Text('비밀번호 찾기',style: pTextStyles.s11w500cBlack))
              ],
            )
          ],
        ),
      ),
    );
  }
}
