import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:podowon_church_app/themes/color.dart';
import 'package:podowon_church_app/themes/font_style.dart';
import '../../../core/routes/app_routes.dart';
import '../../../providers/sign/sign_provider.dart';
import '../../../widgets/dropDownMenu/dropdown_menu.dart';
import '../widgets/signup_textfield_widget.dart';

class SignPage extends ConsumerStatefulWidget {
  const SignPage({super.key});

  @override
  ConsumerState<SignPage> createState() => _State();
}

class _State extends ConsumerState<SignPage> {
  @override
  Widget build(BuildContext context) {
    final nameController = ref.watch(nameControllerProvider);
    final idController = ref.watch(idControllerProvider);
    final passwordController = ref.watch(passwordControllerProvider);
    final passwordCheckController = ref.watch(passwordCheckControllerProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text('회원가입', style: pTextStyles.s19w500cBlack),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, AppRoutes.login);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 50, right: 15.0, left: 15.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: PodowonColor.grey300,
                            width: 1,
                          ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/profile.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0, // 오른쪽 끝
                        bottom: 0, // 아래쪽 끝
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: PodowonColor.grey300),
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            size: 18,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SignupTextfieldWidget(
                        controller: nameController,
                        title: '이름',
                        hintText: '이름을 입력해주세요.',
                      ),
                      SignupTextfieldWidget(
                        controller: idController,
                        title: '아이디',
                        hintText: '아이디를 입력해주세요.',
                      ),
                      SignupTextfieldWidget(
                        controller: passwordController,
                        title: '비밀번호',
                        hintText: '비밀번호를 입력해주세요.',
                      ),
                      SignupTextfieldWidget(
                        controller: passwordCheckController,
                        title: '비밀번호 확인',
                        hintText: '비밀번호를 입력해주세요.',
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 10),
                        child: Text('직분'),
                      ),
                      DropdownMenu2(
                        hintText: '직분을 선택해주세요.',
                        items: ['성도', '집사', '권사', '장로', '교역자'],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
