import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  final textController;
  final validate;
  String text;
  bool isPassword;

  CustomTextFormField({required this.text, required this.validate, this.textController, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$text"),
        SizedBox(height: small_gap),
        TextFormField(
          controller: textController,
          // value가 들어옴
          // value로 유효성 검사하기
          // null 리턴 : 유효성 검사 통과
          // 메세지 리턴 : 유효성 검사 실패
          validator: validate,
          obscureText: isPassword, // 패스워드 가리기 true일때
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ],
    );
  }
}
