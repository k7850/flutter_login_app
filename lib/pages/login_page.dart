import 'package:flutter/material.dart';
import 'package:login_app/components/logo.dart';
import 'package:login_app/size.dart';

import '../components/custom_login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // 키보드 올라오면 inset 영역 때문에 컬럼이 아니라 리스트뷰 써야함
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Login"),
            CustomLoginForm(),
            SizedBox(height: large_gap),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/join");
              },
              child: Text("회원가입 하기"),
            )
          ],
        ),
      ),
    );
  }
}
